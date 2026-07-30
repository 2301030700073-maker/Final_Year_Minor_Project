package org.bouncycastle.est.jcajce;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import org.bouncycastle.est.ESTClient;
import org.bouncycastle.est.ESTClientSourceProvider;
import org.bouncycastle.est.ESTException;
import org.bouncycastle.est.ESTRequest;
import org.bouncycastle.est.ESTRequestBuilder;
import org.bouncycastle.est.ESTResponse;

/* loaded from: classes2.dex */
class DefaultESTClient implements ESTClient {
    private final ESTClientSourceProvider sslSocketProvider;
    private static final Charset utf8 = Charset.forName("UTF-8");
    private static byte[] CRLF = {13, 10};

    private class PrintingOutputStream extends OutputStream {
        private final OutputStream tgt;

        public PrintingOutputStream(OutputStream outputStream) {
            this.tgt = outputStream;
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            System.out.print(String.valueOf((char) i));
            this.tgt.write(i);
        }
    }

    public DefaultESTClient(ESTClientSourceProvider eSTClientSourceProvider) {
        this.sslSocketProvider = eSTClientSourceProvider;
    }

    private static void writeLine(OutputStream outputStream, String str) throws IOException {
        outputStream.write(str.getBytes());
        outputStream.write(CRLF);
    }

    @Override // org.bouncycastle.est.ESTClient
    public ESTResponse doRequest(ESTRequest eSTRequest) throws IOException {
        ESTResponse performRequest;
        int i = 15;
        while (true) {
            performRequest = performRequest(eSTRequest);
            ESTRequest redirectURL = redirectURL(performRequest);
            if (redirectURL == null || i - 1 <= 0) {
                break;
            }
            eSTRequest = redirectURL;
        }
        if (i != 0) {
            return performRequest;
        }
        throw new ESTException("Too many redirects..");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006c A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:3:0x0005, B:5:0x0021, B:6:0x002d, B:8:0x003b, B:11:0x0044, B:12:0x0052, B:14:0x006c, B:15:0x0077, B:17:0x008d, B:18:0x0092, B:21:0x009f, B:22:0x00b8, B:23:0x00c1, B:24:0x00f1, B:26:0x00f7, B:27:0x0104, B:29:0x0107, B:32:0x0128, B:34:0x013c, B:40:0x014c, B:42:0x00bc, B:44:0x0049), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008d A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:3:0x0005, B:5:0x0021, B:6:0x002d, B:8:0x003b, B:11:0x0044, B:12:0x0052, B:14:0x006c, B:15:0x0077, B:17:0x008d, B:18:0x0092, B:21:0x009f, B:22:0x00b8, B:23:0x00c1, B:24:0x00f1, B:26:0x00f7, B:27:0x0104, B:29:0x0107, B:32:0x0128, B:34:0x013c, B:40:0x014c, B:42:0x00bc, B:44:0x0049), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009f A[Catch: all -> 0x002a, TRY_ENTER, TryCatch #0 {all -> 0x002a, blocks: (B:3:0x0005, B:5:0x0021, B:6:0x002d, B:8:0x003b, B:11:0x0044, B:12:0x0052, B:14:0x006c, B:15:0x0077, B:17:0x008d, B:18:0x0092, B:21:0x009f, B:22:0x00b8, B:23:0x00c1, B:24:0x00f1, B:26:0x00f7, B:27:0x0104, B:29:0x0107, B:32:0x0128, B:34:0x013c, B:40:0x014c, B:42:0x00bc, B:44:0x0049), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f7 A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:3:0x0005, B:5:0x0021, B:6:0x002d, B:8:0x003b, B:11:0x0044, B:12:0x0052, B:14:0x006c, B:15:0x0077, B:17:0x008d, B:18:0x0092, B:21:0x009f, B:22:0x00b8, B:23:0x00c1, B:24:0x00f1, B:26:0x00f7, B:27:0x0104, B:29:0x0107, B:32:0x0128, B:34:0x013c, B:40:0x014c, B:42:0x00bc, B:44:0x0049), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x013c A[Catch: all -> 0x002a, TRY_LEAVE, TryCatch #0 {all -> 0x002a, blocks: (B:3:0x0005, B:5:0x0021, B:6:0x002d, B:8:0x003b, B:11:0x0044, B:12:0x0052, B:14:0x006c, B:15:0x0077, B:17:0x008d, B:18:0x0092, B:21:0x009f, B:22:0x00b8, B:23:0x00c1, B:24:0x00f1, B:26:0x00f7, B:27:0x0104, B:29:0x0107, B:32:0x0128, B:34:0x013c, B:40:0x014c, B:42:0x00bc, B:44:0x0049), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014c A[Catch: all -> 0x002a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x002a, blocks: (B:3:0x0005, B:5:0x0021, B:6:0x002d, B:8:0x003b, B:11:0x0044, B:12:0x0052, B:14:0x006c, B:15:0x0077, B:17:0x008d, B:18:0x0092, B:21:0x009f, B:22:0x00b8, B:23:0x00c1, B:24:0x00f1, B:26:0x00f7, B:27:0x0104, B:29:0x0107, B:32:0x0128, B:34:0x013c, B:40:0x014c, B:42:0x00bc, B:44:0x0049), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bc A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:3:0x0005, B:5:0x0021, B:6:0x002d, B:8:0x003b, B:11:0x0044, B:12:0x0052, B:14:0x006c, B:15:0x0077, B:17:0x008d, B:18:0x0092, B:21:0x009f, B:22:0x00b8, B:23:0x00c1, B:24:0x00f1, B:26:0x00f7, B:27:0x0104, B:29:0x0107, B:32:0x0128, B:34:0x013c, B:40:0x014c, B:42:0x00bc, B:44:0x0049), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.bouncycastle.est.ESTResponse performRequest(org.bouncycastle.est.ESTRequest r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.est.jcajce.DefaultESTClient.performRequest(org.bouncycastle.est.ESTRequest):org.bouncycastle.est.ESTResponse");
    }

    protected ESTRequest redirectURL(ESTResponse eSTResponse) throws IOException {
        ESTRequest eSTRequest;
        ESTRequestBuilder withURL;
        if (eSTResponse.getStatusCode() < 300 || eSTResponse.getStatusCode() > 399) {
            eSTRequest = null;
        } else {
            switch (eSTResponse.getStatusCode()) {
                case 301:
                case 302:
                case 303:
                case 306:
                case 307:
                    String header = eSTResponse.getHeader("Location");
                    if (!"".equals(header)) {
                        ESTRequestBuilder eSTRequestBuilder = new ESTRequestBuilder(eSTResponse.getOriginalRequest());
                        if (header.startsWith("http")) {
                            withURL = eSTRequestBuilder.withURL(new URL(header));
                        } else {
                            URL url = eSTResponse.getOriginalRequest().getURL();
                            withURL = eSTRequestBuilder.withURL(new URL(url.getProtocol(), url.getHost(), url.getPort(), header));
                        }
                        eSTRequest = withURL.build();
                        break;
                    } else {
                        throw new ESTException("Redirect status type: " + eSTResponse.getStatusCode() + " but no location header");
                    }
                case 304:
                case 305:
                default:
                    throw new ESTException("Client does not handle http status code: " + eSTResponse.getStatusCode());
            }
        }
        if (eSTRequest != null) {
            eSTResponse.close();
        }
        return eSTRequest;
    }
}
