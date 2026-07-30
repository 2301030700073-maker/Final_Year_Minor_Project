package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheckp.MainActivity;
import java.io.File;

/* loaded from: classes3.dex */
public final class ON extends AsyncTask<Void, Void, String> {

    /* renamed from: do, reason: not valid java name */
    public final Activity f2638do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ProgressDialog f2639do;

    public ON(Activity activity) {
        this.f2638do = activity;
    }

    @Override // android.os.AsyncTask
    public final String doInBackground(Void[] voidArr) {
        String str;
        String str2;
        String str3;
        Activity activity = this.f2638do;
        String str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        try {
            String[] split = System.getenv("PATH").split(CertificateUtil.DELIMITER);
            String str5 = "System Environment PATH:";
            try {
                for (String str6 : split) {
                    str5 = str5 + " " + str6;
                }
                str3 = activity.getString(R.string.bbBinaryLoc) + System.getProperty("line.separator");
                try {
                    String str7 = activity.getString(R.string.bbBinaryFileInfo) + System.getProperty("line.separator");
                    try {
                        for (String str8 : split) {
                            File file = new File(str8 + "/busybox");
                            if (file.exists()) {
                                str3 = str3 + " " + file.getAbsolutePath();
                                StringBuilder sb = new StringBuilder();
                                sb.append(str7);
                                sb.append(" ");
                                boolean z = MainActivity.f12316case;
                                sb.append(C2758fb.m6669do("sh", "stdout", "ls -l " + file.getAbsolutePath()));
                                str7 = sb.toString();
                            }
                        }
                        boolean z2 = MainActivity.f12316case;
                        str4 = C2758fb.m6669do("sh", "stdout", "busybox");
                    } catch (Exception unused) {
                    }
                    str2 = str7;
                    str = str4;
                } catch (Exception unused2) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    str2 = str;
                }
            } catch (Exception unused3) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                str2 = str;
                str3 = str2;
            }
            str4 = str5;
        } catch (Exception unused4) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            str2 = str;
            str3 = str2;
        }
        return str4 + str3 + str2 + "Exec: " + str;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:12|(1:14)|15|(1:16)|(13:47|(1:51)|27|(1:29)|30|31|(1:33)|34|35|(1:37)(1:43)|38|(1:40)(1:42)|41)(13:20|(1:24)|27|(0)|30|31|(0)|34|35|(0)(0)|38|(0)(0)|41)|25|27|(0)|30|31|(0)|34|35|(0)(0)|38|(0)(0)|41) */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d3, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d4, code lost:
    
        defpackage.C0766bi.m4854do().m4855for(r1);
        defpackage.C3948ww.f16495for = "Not returned";
        defpackage.C0766bi.m4854do().m4856if("BusyBoxError: ".concat(r7));
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00bc A[Catch: StringIndexOutOfBoundsException -> 0x00d3, TryCatch #0 {StringIndexOutOfBoundsException -> 0x00d3, blocks: (B:31:0x00b2, B:33:0x00bc, B:34:0x00d0), top: B:30:0x00b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x010d  */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onPostExecute(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ON.onPostExecute(java.lang.Object):void");
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        Activity activity = this.f2638do;
        try {
            ProgressDialog progressDialog = new ProgressDialog(activity);
            this.f2639do = progressDialog;
            progressDialog.setMessage(activity.getString(R.string.progessDialogMsg));
            this.f2639do.setCancelable(true);
            this.f2639do.show();
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }
}
