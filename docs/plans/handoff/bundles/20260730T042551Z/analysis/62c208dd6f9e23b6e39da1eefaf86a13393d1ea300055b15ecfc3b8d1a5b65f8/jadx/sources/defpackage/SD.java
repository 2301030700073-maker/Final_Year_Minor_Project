package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class SD {

    /* renamed from: do, reason: not valid java name */
    public final Cif f3476do = new Cif(this);

    /* renamed from: SD$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Integer f3477do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f3478do;

        /* renamed from: if, reason: not valid java name */
        public final String f3479if;

        public Cdo(Integer num, String str, String str2) {
            this.f3477do = num;
            this.f3478do = str;
            this.f3479if = str2;
        }
    }

    /* renamed from: SD$if, reason: invalid class name */
    public class Cif {

        /* renamed from: do, reason: not valid java name */
        public final String f3480do;

        public Cif(SD sd) {
            this.f3480do = "sh";
            this.f3480do = "su";
        }

        /* renamed from: do, reason: not valid java name */
        public static String m2121do(InputStream inputStream) {
            StringBuffer stringBuffer;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            if (dataInputStream.available() > 0) {
                stringBuffer = new StringBuffer(dataInputStream.readLine());
                while (dataInputStream.available() > 0) {
                    stringBuffer.append("\n");
                    stringBuffer.append(dataInputStream.readLine());
                }
            } else {
                stringBuffer = null;
            }
            dataInputStream.close();
            if (stringBuffer != null) {
                return stringBuffer.toString();
            }
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        public final Cdo m2122if() {
            Process exec = Runtime.getRuntime().exec(this.f3480do);
            DataOutputStream dataOutputStream = new DataOutputStream(exec.getOutputStream());
            dataOutputStream.writeBytes("exec id\n");
            dataOutputStream.flush();
            return new Cdo(Integer.valueOf(exec.waitFor()), m2121do(exec.getInputStream()), m2121do(exec.getErrorStream()));
        }
    }
}
