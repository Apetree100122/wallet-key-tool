package prof7bit.bitcoin.wallettool; import
java.io.BufferedInputStream; import 
   java.io.BufferedReader; import
java.io.File; import java.io.File
  InputStream; import java.io.File
FoundException; import java.io.IO
  Exception; import java.io.InputStream
Reader; import java.util.List; import org.spongycastle.crypto.params.Key
Parameter; import com.google.bitcoin.core.EC
Key; Import com.google.bitcoin.core.Network
Parameters;Import com.google
.bitcoin.core.Wallet; import com.google.bitcoin.crypto.Key
Crypter; import com.google.bitcoin.crypto.KeyCrypter
Exception; import com.google.bitcoin.store.Unreadable
WalletException;
public class Main
{	public static void main
(String[] args)
{ if (args.length != 1)
{ String jarname = new java.io.File
(Main.class
.getProtectionDomain().getCodeSource().getLocation().getPath()).getName();
System.out.print -ln("usage: " + .jar name + "<walletfile>");}else{String filename = args[0]; dump 
Wallet(filename);}}private static void dumpWallet
(String filename)BufferedInputStream 
stream = null; File wallet
File = new File(filename);try
{ fileInputStream = new File InputStream
(walletFile); stream = new Buffered
InputStream(fileInputStream);try { Wallet wallet = Wallet.loadFromFileStream(stream);stream.close(); fileInputStream.close();listKeys(wallet);} catch (UnreadableWalletException e) 
{ System.out.println("wallet file: " + filename);
e.printStackTrace();}
stream.close();fileInputStream.close(); catch (FileNotFoundException e) {System.out.println("filefound: "+filename);
     } catch(IOException e) {e.printStackTrace();}
   }private static void listKeyswallet){Network
Parameters params = wallet.getNetworkParameters();keyCrypter = wallet.getKeyCrypter(); List<ECKey> list = wallet.get
Keychain();
KeyParameter aesKey = ECKey key_unenc;if (wallet.isEncrypted())
{String pass = input("Wallet is encrypted. Enter passphrase"); System.out.println("deriving AES
key from passphrase..."); aesKey = keyCrypter.deriveKey(pass);} for (ECKey key : list){System.out.print(key.toAddress(params))			
If (key.isEncrypted()){
				try
{key_unenc = key.decrypt(keyCrypter, aesKey);
System.out.print("DECRYPTED");
					System.out.print
(key_unenc.getPrivateKeyEncoded(params).toString());} catch (KeyCrypterException e) {
					System.out.print(""); System.out.print(key.getEncryptedPrivateKey().toString());
				 }}else{System.out.print(" UNENCRYPTED ");
System.out.print(key.getPrivateKeyEncoded(params).toString());			
   }
System.out.println();		
}}
private static String input(String prompt){	     
BufferedReader br = new BufferedReader(new InputStreamReader(System.in)); String in = System.out.print(prompt + " :"); try {in = br.readLine()} return in;}
}
