package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class TD {

    /* renamed from: do, reason: not valid java name */
    public final Cif f3618do = new Cif(this, "sh");

    /* renamed from: if, reason: not valid java name */
    public final Cif f3619if = new Cif(this, "su");

    /* renamed from: TD$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Integer f3620do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f3621do;

        /* renamed from: if, reason: not valid java name */
        public final String f3622if;

        public Cdo(Integer num, String str, String str2) {
            this.f3620do = num;
            this.f3621do = str;
            this.f3622if = str2;
        }
    }

    /* renamed from: TD$if, reason: invalid class name */
    public class Cif {

        /* renamed from: do, reason: not valid java name */
        public final String f3623do;

        public Cif(TD td, String str) {
            this.f3623do = "sh";
            this.f3623do = str;
        }

        /* renamed from: do, reason: not valid java name */
        public static String m2227do(InputStream inputStream) {
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
        public final Cdo m2228if(String str) {
            Process exec = Runtime.getRuntime().exec(this.f3623do);
            DataOutputStream dataOutputStream = new DataOutputStream(exec.getOutputStream());
            dataOutputStream.writeBytes("exec " + str + "\n");
            dataOutputStream.flush();
            return new Cdo(Integer.valueOf(exec.waitFor()), m2227do(exec.getInputStream()), m2227do(exec.getErrorStream()));
        }
    }
}
