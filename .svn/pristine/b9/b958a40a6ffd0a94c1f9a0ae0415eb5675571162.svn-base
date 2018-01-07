package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CartDao;
import com.dao.CartDaoImpl;
import com.model.CardDetails;
import com.model.Cart;
import com.model.User;
import com.service.UserService;
import com.service.UserServiceImpl;

/**
 * Servlet implementation class CardController
 */
@WebServlet("/CardController")
public class CardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 UserService userService= new UserServiceImpl();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String button = request.getParameter("action");
		String userId= (String) session.getAttribute("userId");
		String card = request.getParameter("card");

		if(button.equals("Quick Pay"))
		{		
			List<CardDetails> cardDetails = userService.getCardDetails(userId);
//			cardDetails = userService.getCardDetails(userId);
			System.out.print(cardDetails);
			session.setAttribute("eventId", cardDetails);
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("quickPay.jsp");
			reqdispatcher.forward(request, response);		
			}
		else if(button.equals("Continue Shopping")){
			response.sendRedirect("index.jsp");
		}
		else if(button.equals("Continue"))
		{		
			String cardNo = request.getParameter("cardNo");
			String cardName = request.getParameter("cardName");
			String expirationDateMonth = request.getParameter("expirationDateMonth");
			String expirationDateYear = request.getParameter("expirationDateYear");
			CardDetails cardDetails = new CardDetails();
			cardDetails.setUserId(userId);
			cardDetails.setCardNo(cardNo);
			cardDetails.setCardName(cardName);
			cardDetails.setExpirationDateMonth(expirationDateMonth);
			cardDetails.setExpirationDateYear(expirationDateYear);
			if(card.equals("Select anyone from below!")||cardDetails.getCardNo().isEmpty() || cardDetails.getCardName().isEmpty() || cardDetails.getUserId().isEmpty()|| cardDetails.getExpirationDateMonth().isEmpty()||(!cardDetails.getCardNo().matches("^4\\d{15}$"))||
					(!cardDetails.getCardName().matches("[a-zA-Z][a-zA-Z ]*"))|| cardDetails.getExpirationDateMonth().isEmpty() 
					|| cardDetails.getExpirationDateYear().isEmpty() || (!cardDetails.getExpirationDateMonth().matches("(1[0-2]|0[1-9]|\\d)")) || (!cardDetails.getExpirationDateYear().matches("([2-9]\\d[1-9]\\d|[1-9]\\d)$")) ){
				if(cardDetails.getCardNo().isEmpty() || cardDetails.getCardName().isEmpty() || cardDetails.getUserId().isEmpty()|| cardDetails.getExpirationDateMonth().isEmpty() ||cardDetails.getExpirationDateYear().isEmpty()){
						request.setAttribute("error", "Enter all card details");
				}
				else if(card.equals("Select anyone from below!")){
					request.setAttribute("error", "Select add card option");

				}
				else if(!cardDetails.getCardName().matches("[a-zA-Z][a-zA-Z ]*")){
					request.setAttribute("error", "Invalid card name");
				}
				else if(!cardDetails.getCardNo().matches("^4\\d{15}$")){
					request.setAttribute("error", "Invalid card number");
				}
				else if(cardDetails.getExpirationDateMonth().isEmpty()){
					request.setAttribute("error", "Enter month");
				}
				else if(cardDetails.getExpirationDateMonth().isEmpty()){
					request.setAttribute("error", "Enter year");
				}
				else if(!cardDetails.getExpirationDateMonth().matches("(1[0-2]|0[1-9]|\\d)")) {
					request.setAttribute("error", "Enter valid month");
				}
				else if(!cardDetails.getExpirationDateYear().matches("([2-9]\\d[1-9]\\d|[1-9]\\d)$")){
					request.setAttribute("error", "Enter valid year");
				}
				CartDao c = new CartDaoImpl();
				List list=new ArrayList();
				User u=userService.getUserDetails(userId);
				request.setAttribute("address", u.getAddress());
				list=c.getProduct(userId);
				RequestDispatcher reqdispatcher = request.getRequestDispatcher("payment.jsp");
				reqdispatcher.forward(request, response);		
				}
			else if(card.equals("Y")){
				System.out.print("card.."+card);
				userService.addCardDetails(cardDetails);
				session.setAttribute("success", "Card Added Succesfully");
				List <Cart> list= new ArrayList();
				CartDao cartDao= new CartDaoImpl();
				list = cartDao.getProduct(userId);
				Integer quantity= cartDao.addQuantity(list);
				Integer price =cartDao.calculatePrice(list);
				request.setAttribute("quantity", quantity);
				request.setAttribute("total", price);
				RequestDispatcher reqdispatcher = request.getRequestDispatcher("reviewOrder.jsp");
				reqdispatcher.forward(request, response);
			}
			else{
				List <Cart> list= new ArrayList();
				CartDao cartDao= new CartDaoImpl();
				list = cartDao.getProduct(userId);
				Integer quantity= cartDao.addQuantity(list);
				Integer price =cartDao.calculatePrice(list);
				request.setAttribute("quantity", quantity);
				request.setAttribute("total", price);
				RequestDispatcher reqdispatcher = request.getRequestDispatcher("reviewOrder.jsp");
				reqdispatcher.forward(request, response);	
				}}
			
			
		
		else if(button.equals("Continue Payment")){
			String radioButton=request.getParameter("myradio");
			if(radioButton!=null){
				List <Cart> list= new ArrayList();
				CartDao cartDao= new CartDaoImpl();
				list = cartDao.getProduct(userId);
				Integer quantity= cartDao.addQuantity(list);
				Integer price =cartDao.calculatePrice(list);
				request.setAttribute("quantity", quantity);
				request.setAttribute("total", price);
				RequestDispatcher reqdispatcher = request.getRequestDispatcher("reviewOrder.jsp");
				reqdispatcher.forward(request, response);	
			}
			else{
				List<CardDetails> cardDetails = userService.getCardDetails(userId);
//				cardDetails = userService.getCardDetails(userId);
				System.out.print(cardDetails);
				session.setAttribute("eventId", cardDetails);
				request.setAttribute("error", "Select a card");
				RequestDispatcher reqdispatcher = request.getRequestDispatcher("quickPay.jsp");
				reqdispatcher.forward(request, response);	
			}
		}
		else{
			List <Cart> list= new ArrayList();
			CartDao cartDao= new CartDaoImpl();
			list = cartDao.getProduct(userId);
			Integer quantity= cartDao.addQuantity(list);
			Integer price =cartDao.calculatePrice(list);
			request.setAttribute("quantity", quantity);
			request.setAttribute("total", price);
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("reviewOrder.jsp");
			reqdispatcher.forward(request, response);	
			}
		/*else{
		String cardNo = request.getParameter("cardNo");
		String cardName = request.getParameter("cardName");
		String expirationDateMonth = request.getParameter("expirationDateMonth");
		String expirationDateYear = request.getParameter("expirationDateYear");
		CardDetails cardDetails = new CardDetails();
		cardDetails.setUserId(userId);
		cardDetails.setCardNo(cardNo);
		cardDetails.setCardName(cardName);
		cardDetails.setExpirationDateMonth(expirationDateMonth);
		cardDetails.setExpirationDateYear(expirationDateYear);
		if(cardDetails.getCardNo().isEmpty() || cardDetails.getCardName().isEmpty() || cardDetails.getUserId().isEmpty()|| cardDetails.getExpirationDateMonth().isEmpty()||(!cardDetails.getCardNo().matches("^4\\d{15}$"))||
				(!cardDetails.getCardName().matches("[a-zA-Z][a-zA-Z ]*"))|| cardDetails.getExpirationDateMonth().isEmpty() 
				|| cardDetails.getExpirationDateYear().isEmpty() || (!cardDetails.getExpirationDateMonth().matches("(1[0-2]|0[1-9]|\\d)")) || (!cardDetails.getExpirationDateYear().matches("([2-9]\\d[1-9]\\d|[1-9]\\d)$")) ){
			if(cardDetails.getCardNo().isEmpty() || cardDetails.getCardName().isEmpty() || cardDetails.getUserId().isEmpty()|| cardDetails.getExpirationDateMonth().isEmpty() ||cardDetails.getExpirationDateYear().isEmpty()){
					request.setAttribute("error", "Enter all card details");
			}
			else if(!cardDetails.getCardName().matches("[a-zA-Z][a-zA-Z ]*")){
				request.setAttribute("error", "Invalid card name");
			}
			else if(!cardDetails.getCardNo().matches("^4\\d{15}$")){
				request.setAttribute("error", "Invalid card number");
			}
			else if(cardDetails.getExpirationDateMonth().isEmpty()){
				request.setAttribute("error", "Enter month");
			}
			else if(cardDetails.getExpirationDateMonth().isEmpty()){
				request.setAttribute("error", "Enter year");
			}
			else if(!cardDetails.getExpirationDateMonth().matches("(1[0-2]|0[1-9]|\\d)")) {
				request.setAttribute("error", "Enter valid month");
			}
			else if(!cardDetails.getExpirationDateYear().matches("([2-9]\\d[1-9]\\d|[1-9]\\d)$")){
				request.setAttribute("error", "Enter valid year");
			}
			RequestDispatcher reqdispatcher = request.getRequestDispatcher("payment.jsp");
			reqdispatcher.forward(request, response);		
			}
		else{
			userService.addCardDetails(cardDetails);
//			session.setAttribute("userName", user.getFname());
//			session.setAttribute("userId", user.getUserId());
			session.setAttribute("success", "Card Added Succesfully");
			userService.getCardDetails(userId);

			RequestDispatcher reqdispatcher = request.getRequestDispatcher("payment.jsp");
			reqdispatcher.forward(request, response);
		}
   } */
	
	}
}
