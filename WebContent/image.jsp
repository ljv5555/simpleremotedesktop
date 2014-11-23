<%@page import="java.awt.Point"%>
<%@page import="java.awt.MouseInfo"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Toolkit"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.Rectangle"%>
<%@page import="java.awt.DisplayMode"%>
<%@page import="java.awt.Robot"%>
<%@ page language="java" contentType="image/png"%>
<% 
Robot r = new Robot();
/*
Rectangle r = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
*/
BufferedImage bi = r.createScreenCapture(new Rectangle(Toolkit.getDefaultToolkit().getScreenSize()));
Point p= MouseInfo.getPointerInfo().getLocation();
Point p1=new Point(p.x,p.y),p2=new Point(p.x,p.y);

if(p1.x>1){p1.setLocation(p1.x-1, p1.y);}
if(p1.x>1){p1.setLocation(p1.x-1, p1.y);}
if(p1.x>1){p1.setLocation(p1.x-1, p1.y);}
if(p2.x<(bi.getWidth()-1)){p2.setLocation(p2.x+1,p2.y);}
if(p2.x<(bi.getWidth()-1)){p2.setLocation(p2.x+1,p2.y);}
if(p2.x<(bi.getWidth()-1)){p2.setLocation(p2.x+1,p2.y);}
if(p1.y>1){p1.setLocation(p1.x, p1.y-1);}
if(p1.y>1){p1.setLocation(p1.x, p1.y-1);}
if(p1.y>1){p1.setLocation(p1.x, p1.y-1);}
if(p2.y<(bi.getHeight()-1)){p2.setLocation(p2.x,p2.y+1);}
if(p2.y<(bi.getHeight()-1)){p2.setLocation(p2.x,p2.y+1);}
if(p2.y<(bi.getHeight()-1)){p2.setLocation(p2.x,p2.y+1);}

if(p1.x>1){p1.setLocation(p1.x-1, p1.y);}
if(p1.x>1){p1.setLocation(p1.x-1, p1.y);}
if(p1.x>1){p1.setLocation(p1.x-1, p1.y);}
if(p2.x<(bi.getWidth()-1)){p2.setLocation(p2.x+1,p2.y);}
if(p2.x<(bi.getWidth()-1)){p2.setLocation(p2.x+1,p2.y);}
if(p2.x<(bi.getWidth()-1)){p2.setLocation(p2.x+1,p2.y);}
if(p1.y>1){p1.setLocation(p1.x, p1.y-1);}
if(p1.y>1){p1.setLocation(p1.x, p1.y-1);}
if(p1.y>1){p1.setLocation(p1.x, p1.y-1);}
if(p2.y<(bi.getHeight()-1)){p2.setLocation(p2.x,p2.y+1);}
if(p2.y<(bi.getHeight()-1)){p2.setLocation(p2.x,p2.y+1);}
if(p2.y<(bi.getHeight()-1)){p2.setLocation(p2.x,p2.y+1);}

if(p1.x>1){p1.setLocation(p1.x-1, p1.y);}
if(p1.x>1){p1.setLocation(p1.x-1, p1.y);}
if(p1.x>1){p1.setLocation(p1.x-1, p1.y);}
if(p2.x<(bi.getWidth()-1)){p2.setLocation(p2.x+1,p2.y);}
if(p2.x<(bi.getWidth()-1)){p2.setLocation(p2.x+1,p2.y);}
if(p2.x<(bi.getWidth()-1)){p2.setLocation(p2.x+1,p2.y);}
if(p1.y>1){p1.setLocation(p1.x, p1.y-1);}
if(p1.y>1){p1.setLocation(p1.x, p1.y-1);}
if(p1.y>1){p1.setLocation(p1.x, p1.y-1);}
if(p2.y<(bi.getHeight()-1)){p2.setLocation(p2.x,p2.y+1);}
if(p2.y<(bi.getHeight()-1)){p2.setLocation(p2.x,p2.y+1);}
if(p2.y<(bi.getHeight()-1)){p2.setLocation(p2.x,p2.y+1);}
int ii=0,jj=0;
for(int i=p1.x;i<=p2.x;i++)
{
	ii+=.125;
	for(int j=p1.y;j<=p2.y;j++)
	{
		jj+=.125;
		if(i==p.x || j==p.y){bi.setRGB(i, j, (int) Math.round(  ((0.5) * 16711680) + (i * 65280) + (j * 255))  );}
		System.out.println((int) Math.round(  ((0.5) * 16711680) + (i * 65280) + (j * 255)) );
	}
}

ImageIO.write(bi,"png", response.getOutputStream());
%>