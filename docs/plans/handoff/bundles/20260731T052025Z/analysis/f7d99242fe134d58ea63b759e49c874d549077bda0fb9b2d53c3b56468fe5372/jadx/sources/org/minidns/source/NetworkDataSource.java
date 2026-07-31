package org.minidns.source;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.io.FileSystemException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.MiniDnsException;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsqueryresult.StandardDnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkDataSource {
    public static final Logger LOGGER = Logger.getLogger(NetworkDataSource.class.getName());
    public int queryMode;

    public final StandardDnsQueryResult query(DnsMessage dnsMessage, InetAddress inetAddress) {
        boolean z;
        int i = this.queryMode;
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i);
        DnsMessage dnsMessage2 = null;
        if (ordinal == 0 || ordinal == 1) {
            z = true;
        } else {
            if (ordinal != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unsupported query mode: ".concat(i != 1 ? i != 2 ? i != 3 ? "null" : "tcp" : "udpTcp" : "dontCare"));
                return null;
            }
            z = false;
        }
        ArrayList arrayList = new ArrayList(2);
        if (z) {
            try {
                dnsMessage2 = queryUdp(dnsMessage, inetAddress);
            } catch (IOException e) {
                arrayList.add(e);
            }
            if (dnsMessage2 != null && !dnsMessage2.truncated) {
                return new StandardDnsQueryResult(0, dnsMessage2);
            }
            LOGGER.log(Level.FINE, "Fallback to TCP because {0}", new Object[]{dnsMessage2 != null ? "response is truncated" : arrayList.get(0)});
        }
        try {
            dnsMessage2 = queryTcp(dnsMessage, inetAddress);
        } catch (IOException e2) {
            arrayList.add(e2);
            FileSystemException.throwIfRequired(arrayList);
        }
        return new StandardDnsQueryResult(0, dnsMessage2);
    }

    public final DnsMessage queryTcp(DnsMessage dnsMessage, InetAddress inetAddress) {
        Throwable th;
        Socket socket;
        try {
            socket = new Socket();
        } catch (Throwable th2) {
            th = th2;
            socket = null;
        }
        try {
            socket.connect(new InetSocketAddress(inetAddress, 53), 5000);
            socket.setSoTimeout(5000);
            DataOutputStream dataOutputStream = new DataOutputStream(socket.getOutputStream());
            byte[] serialize = dnsMessage.serialize();
            DataOutputStream dataOutputStream2 = new DataOutputStream(dataOutputStream);
            dataOutputStream2.writeShort(serialize.length);
            dataOutputStream2.write(serialize);
            dataOutputStream.flush();
            DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
            int readUnsignedShort = dataInputStream.readUnsignedShort();
            byte[] bArr = new byte[readUnsignedShort];
            for (int i = 0; i < readUnsignedShort; i += dataInputStream.read(bArr, i, readUnsignedShort - i)) {
            }
            DnsMessage dnsMessage2 = new DnsMessage(bArr);
            if (dnsMessage2.id != dnsMessage.id) {
                throw new MiniDnsException.IdMismatch(dnsMessage, dnsMessage2);
            }
            socket.close();
            return dnsMessage2;
        } catch (Throwable th3) {
            th = th3;
            if (socket == null) {
                throw th;
            }
            socket.close();
            throw th;
        }
    }

    public final DnsMessage queryUdp(DnsMessage dnsMessage, InetAddress inetAddress) {
        DatagramSocket datagramSocket;
        byte[] serialize = dnsMessage.serialize();
        DatagramPacket datagramPacket = new DatagramPacket(serialize, serialize.length, inetAddress, 53);
        byte[] bArr = new byte[1232];
        try {
            datagramSocket = new DatagramSocket();
        } catch (Throwable th) {
            th = th;
            datagramSocket = null;
        }
        try {
            datagramSocket.setSoTimeout(5000);
            datagramSocket.send(datagramPacket);
            DatagramPacket datagramPacket2 = new DatagramPacket(bArr, 1232);
            datagramSocket.receive(datagramPacket2);
            DnsMessage dnsMessage2 = new DnsMessage(datagramPacket2.getData());
            if (dnsMessage2.id != dnsMessage.id) {
                throw new MiniDnsException.IdMismatch(dnsMessage, dnsMessage2);
            }
            datagramSocket.close();
            return dnsMessage2;
        } catch (Throwable th2) {
            th = th2;
            if (datagramSocket != null) {
                datagramSocket.close();
            }
            throw th;
        }
    }
}
