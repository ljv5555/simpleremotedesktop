import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.util.Base64;

import javax.imageio.ImageIO;

import com.sun.prism.paint.Color;

/**
 * 
 */

/**
 * @author joe
 *
 */
public class SimpleRemoteDesktop {

	private static int DELAY_MS = 2000;
	/**
	 * 
	 */
	public SimpleRemoteDesktop() {
		
	}

	/**
	 * 
	 * @param args
	 */
	public SimpleRemoteDesktop(String args[])
	{
		BufferedImage currentImage = null;
		BufferedImage lastImage = null;
		String cistring = "";
		Robot r = null;
		// Test if each monitor will support my app's window
		// Iterate through each monitor and see what size each is
		GraphicsDevice gd = GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice();
		int width = gd.getDisplayMode().getWidth();
		int height = gd.getDisplayMode().getHeight();

		Rectangle screens[] = {};
		try{
			r = new Robot();
			//System.out.println( r.getPixelColor(10, 10) );
			
		}catch(Exception ex){ex.printStackTrace();System.exit(1);}
		while(true)
		{
			try{
				Thread.sleep(DELAY_MS);
				currentImage = r.createScreenCapture(new Rectangle(width,height));
				//ByteArrayOutputStream baos = new ByteArrayOutputStream();
				//ImageIO.write(bi, "png", baos);
				lastImage = currentImage;
				
				cistring = "{\"image\":[";

				int[] rgb = currentImage.getRGB(1,1, width-1, height-1, null, 1, 1);
				StringBuilder astr = new StringBuilder();
				for(int i=0;i<rgb.length;i++)
				{
							if(i!=0){astr.append(",");}
				
						astr.append("\"").append(Integer.toHexString(rgb[i])).append("\"");
						//System.out.println("i,j="+i+","+j);
						astr.append( "\"]" );
						System.out.println("i="+i+", rgb.length="+rgb.length);
						
				}
					
					
				
				cistring += astr.toString()+"]}";
				System.out.println();
				System.out.println();
				System.out.println(cistring);
				System.out.println();
				
			}catch(Exception e){e.printStackTrace();}
		}
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {new SimpleRemoteDesktop(args);}

}
