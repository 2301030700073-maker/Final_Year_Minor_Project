package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.widget.TextView;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheck.Views.ProgressWheelv2;
import com.joeykrim.rootcheckp.MainActivity;
import defpackage.TD;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

/* renamed from: qK, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class AsyncTaskC3561qK extends AsyncTask<Void, Integer, String[]> {

    /* renamed from: do, reason: not valid java name */
    public static boolean f15094do = false;

    /* renamed from: for, reason: not valid java name */
    public static int f15095for;

    /* renamed from: if, reason: not valid java name */
    public static int f15096if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f15097do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Activity f15098do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ProgressDialog f15099do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String[] f15100do;

    /* renamed from: qK$do, reason: invalid class name */
    public class Cdo implements DialogInterface.OnCancelListener {
        public Cdo() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            AsyncTaskC3561qK asyncTaskC3561qK = AsyncTaskC3561qK.this;
            asyncTaskC3561qK.f15097do = 1;
            asyncTaskC3561qK.cancel(true);
        }
    }

    /* renamed from: qK$if, reason: invalid class name */
    public class Cif extends Thread {
        public Cif() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            AsyncTaskC3561qK asyncTaskC3561qK;
            long currentTimeMillis = System.currentTimeMillis();
            long j = (AsyncTaskC3561qK.f15096if == 1 ? 12000 : 16000) + currentTimeMillis;
            int i = 0;
            while (true) {
                long currentTimeMillis2 = System.currentTimeMillis();
                asyncTaskC3561qK = AsyncTaskC3561qK.this;
                if (currentTimeMillis2 >= j || asyncTaskC3561qK.isCancelled() || asyncTaskC3561qK.getStatus() == AsyncTask.Status.FINISHED) {
                    break;
                }
                if (System.currentTimeMillis() > 1000 + currentTimeMillis) {
                    currentTimeMillis = System.currentTimeMillis();
                    i++;
                    asyncTaskC3561qK.publishProgress(Integer.valueOf(i));
                }
            }
            if (System.currentTimeMillis() < j || asyncTaskC3561qK.isCancelled() || asyncTaskC3561qK.getStatus() == AsyncTask.Status.FINISHED) {
                return;
            }
            asyncTaskC3561qK.f15097do = 2;
            asyncTaskC3561qK.cancel(true);
        }
    }

    public AsyncTaskC3561qK(Activity activity) {
        this.f15098do = activity;
    }

    /* renamed from: break, reason: not valid java name */
    public static String m7872break(int i) {
        return i == 1 ? " second" : " seconds";
    }

    /* renamed from: case, reason: not valid java name */
    public static String m7873case() {
        String str = "System Environment PATH:";
        for (String str2 : System.getenv("PATH").split(CertificateUtil.DELIMITER)) {
            str = Creturn.m7982new(str, " ", str2);
        }
        return str;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m7874catch(ArrayList arrayList) {
        String[] split = System.getenv("PATH").split(CertificateUtil.DELIMITER);
        ArrayList arrayList2 = new ArrayList();
        for (String str : split) {
            String str2 = str + "/su";
            m7875class(str2, arrayList);
            arrayList2.add(str2);
        }
        if (!arrayList2.contains("/system/bin/su")) {
            m7875class("/system/bin/su", arrayList);
        }
        if (!arrayList2.contains("/system/xbin/su")) {
            m7875class("/system/xbin/su", arrayList);
        }
        if (!arrayList2.contains("/sbin/su")) {
            m7875class("/sbin/su", arrayList);
        }
        if (!arrayList2.contains("/system/xbin/sudo")) {
            m7875class("/system/xbin/sudo", arrayList);
        }
        if (!arrayList2.contains("/magisk/.core/bin/su")) {
            m7875class("/magisk/.core/bin/su", arrayList);
        }
        if (arrayList2.contains("/su/bin/su")) {
            return;
        }
        m7875class("/su/bin/su", arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: class, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m7875class(java.lang.String r11, java.util.ArrayList r12) {
        /*
            r0 = 3
            java.lang.String[] r1 = new java.lang.String[r0]
            r2 = 0
            java.lang.String r3 = "sh"
            r1[r2] = r3
            r4 = 1
            java.lang.String r5 = "stdout"
            r1[r4] = r5
            java.lang.String r6 = "ls -l "
            java.lang.String r11 = defpackage.C4122zt.m8824for(r6, r11)
            r6 = 2
            r1[r6] = r11
            java.lang.String r11 = m7879this(r1)
            r12.add(r11)
            java.lang.String r1 = "root"
            boolean r1 = r11.contains(r1)
            if (r1 == 0) goto Lae
            java.lang.String r1 = "lrwxrwxrwx"
            boolean r1 = r11.contains(r1)
            if (r1 != 0) goto Lae
            java.lang.String r1 = "No such file or directory"
            boolean r1 = r11.contains(r1)
            if (r1 != 0) goto Lae
            java.lang.String r1 = "Permission denied"
            boolean r1 = r11.contains(r1)
            if (r1 == 0) goto L3e
            goto Lae
        L3e:
            java.lang.String r1 = "  *"
            java.lang.String[] r1 = r11.split(r1)
            int r7 = r1.length
            r8 = 6
            java.lang.String r9 = ""
            if (r7 < r8) goto L92
            r7 = r1[r6]
            if (r7 == 0) goto L92
            r7 = r1[r0]
            if (r7 == 0) goto L92
            java.lang.String r8 = "/"
            boolean r7 = r7.contains(r8)
            if (r7 != 0) goto L92
            r7 = r1[r0]
            java.lang.String r8 = "l"
            boolean r7 = r7.startsWith(r8)
            if (r7 != 0) goto L92
            r7 = r1[r6]
            java.lang.String r8 = ": *"
            java.lang.String[] r7 = r7.split(r8)
            r7 = r7[r2]
            if (r7 == 0) goto L71
            goto L93
        L71:
            bi r7 = defpackage.C0766bi.m4854do()
            java.lang.String r8 = "SysFileParsing-SuLocationSplitError: "
            java.lang.String r10 = ", fields.length: "
            java.lang.StringBuilder r11 = defpackage.V1.m2493break(r8, r11, r10)
            int r8 = r1.length
            r11.append(r8)
            java.lang.String r8 = ", fields[2]: "
            r11.append(r8)
            r1 = r1[r6]
            r11.append(r1)
            java.lang.String r11 = r11.toString()
            r7.m4856if(r11)
        L92:
            r7 = r9
        L93:
            boolean r11 = r9.equals(r7)
            if (r11 != 0) goto Lae
            java.lang.String[] r11 = new java.lang.String[r0]
            r11[r2] = r3
            r11[r4] = r5
            java.lang.String r0 = " --version"
            java.lang.String r0 = r7.concat(r0)
            r11[r6] = r0
            java.lang.String r11 = m7879this(r11)
            r12.add(r11)
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AsyncTaskC3561qK.m7875class(java.lang.String, java.util.ArrayList):void");
    }

    /* renamed from: for, reason: not valid java name */
    public static String m7877for() {
        try {
            File file = new File("/default.prop");
            if (!file.canRead()) {
                return "checkADBSecure: No world/other read access to /default.prop";
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                if (readLine.contains("ro.secure")) {
                    return "checkADBSecure: " + readLine;
                }
            }
            return "checkADBSecure: ro.secure has not been found in /default.prop";
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            e.toString();
            return "checkADBSecure: ro.secure has not been found in /default.prop";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        if (m7879this(new java.lang.String[]{"su", "stdout", "getenforce"}).contains("Enforcing") != false) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m7878new() {
        /*
            java.lang.String r0 = "Enforcing"
            java.lang.String r1 = "getenforce"
            java.lang.String r2 = "stdout"
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> L87
            java.lang.String r4 = "/sys/fs/selinux/enforce"
            r3.<init>(r4)     // Catch: java.lang.Exception -> L87
            boolean r4 = r3.exists()     // Catch: java.lang.Exception -> L87
            if (r4 != 0) goto L16
            java.lang.String r0 = "checkSELinuxEnforcing: Does not exist"
            return r0
        L16:
            boolean r4 = r3.canRead()     // Catch: java.lang.Exception -> L87
            java.lang.String r5 = "checkSELinuxEnforcing: true"
            if (r4 != 0) goto L64
            r3 = 1
            r4 = 0
            java.lang.String r6 = "sh"
            java.lang.String[] r6 = new java.lang.String[]{r6, r2, r1}     // Catch: java.lang.Exception -> L32
            java.lang.String r6 = m7879this(r6)     // Catch: java.lang.Exception -> L32
            boolean r6 = r6.contains(r0)     // Catch: java.lang.Exception -> L32
            if (r6 == 0) goto L3d
            r6 = 1
            goto L3e
        L32:
            r6 = move-exception
            bi r7 = defpackage.C0766bi.m4854do()     // Catch: java.lang.Exception -> L87
            r7.m4855for(r6)     // Catch: java.lang.Exception -> L87
            r6.toString()     // Catch: java.lang.Exception -> L87
        L3d:
            r6 = 0
        L3e:
            if (r6 == 0) goto L41
            return r5
        L41:
            java.lang.String r6 = "su"
            java.lang.String[] r1 = new java.lang.String[]{r6, r2, r1}     // Catch: java.lang.Exception -> L52
            java.lang.String r1 = m7879this(r1)     // Catch: java.lang.Exception -> L52
            boolean r0 = r1.contains(r0)     // Catch: java.lang.Exception -> L52
            if (r0 == 0) goto L5d
            goto L5e
        L52:
            r0 = move-exception
            bi r1 = defpackage.C0766bi.m4854do()     // Catch: java.lang.Exception -> L87
            r1.m4855for(r0)     // Catch: java.lang.Exception -> L87
            r0.toString()     // Catch: java.lang.Exception -> L87
        L5d:
            r3 = 0
        L5e:
            if (r3 == 0) goto L61
            return r5
        L61:
            java.lang.String r0 = "checkSELinuxEnforcing: No world/other read access to /sys/fs/selinux/enforce"
            return r0
        L64:
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L87
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L87
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L87
            r2.<init>(r3)     // Catch: java.lang.Exception -> L87
            r1.<init>(r2)     // Catch: java.lang.Exception -> L87
            r0.<init>(r1)     // Catch: java.lang.Exception -> L87
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Exception -> L87
        L77:
            if (r1 == 0) goto L92
            java.lang.String r2 = "1"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Exception -> L87
            if (r1 == 0) goto L82
            return r5
        L82:
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Exception -> L87
            goto L77
        L87:
            r0 = move-exception
            bi r1 = defpackage.C0766bi.m4854do()
            r1.m4855for(r0)
            r0.toString()
        L92:
            java.lang.String r0 = "checkSELinuxEnforcing: false"
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AsyncTaskC3561qK.m7878new():java.lang.String");
    }

    /* renamed from: this, reason: not valid java name */
    public static String m7879this(String[] strArr) {
        if (!strArr[0].equals("canSU")) {
            if (strArr[0] == null || strArr[1] == null || strArr[2] == null) {
                return "Error in Parameters passed to AsyncTask";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(strArr[2]);
            sb.append(": ");
            sb.append(System.getProperty("line.separator"));
            boolean z = MainActivity.f12316case;
            sb.append(C2758fb.m6669do(strArr[0], strArr[1], strArr[2]));
            return sb.toString();
        }
        TD.Cdo m2228if = new TD().f3619if.m2228if("id");
        String str = m2228if.f3621do;
        if (str != null && str.contains("uid=0")) {
            return "canSUtrue id: " + System.getProperty("line.separator") + str;
        }
        StringBuilder sb2 = new StringBuilder("canSUfalse: ");
        sb2.append(System.getProperty("line.separator"));
        sb2.append("Error: stderr: ");
        Creturn.m7980goto(sb2, m2228if.f3622if, ", stdout: ", str, ", exit_value: ");
        Integer num = m2228if.f3620do;
        sb2.append(num != null ? Integer.toString(num.intValue()) : "null");
        return sb2.toString();
    }

    @Override // android.os.AsyncTask
    public final String[] doInBackground(Void[] voidArr) {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(m7873case());
            arrayList.add(m7877for());
            arrayList.add(m7878new());
            QF.m1839if(this.f15098do);
            arrayList.add("checkSuperUserPackageStatus");
            m7874catch(arrayList);
            arrayList.add(m7879this(new String[]{"canSU"}));
        } catch (InterruptedException e) {
            C0766bi.m4854do().m4855for(e);
            e.toString();
            int i = this.f15097do;
            if (i == 2) {
                f15096if++;
                StringBuilder sb = new StringBuilder("Error: Timeout of ");
                sb.append(f15095for);
                sb.append(" seconds on ");
                sb.append(f15096if);
                sb.append(f15096if == 1 ? " attempt" : " attempts");
                arrayList.add(sb.toString());
            } else if (i == 1) {
                arrayList.add("Error: Cancelled by user");
            } else {
                arrayList.add("Error: Thread interrupted for external unknown reason");
            }
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
            e2.toString();
            arrayList.add("Error: " + e2);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        this.f15100do = strArr;
        return strArr;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m7880else(String[] strArr) {
        Activity activity;
        m7883try();
        if (f15096if != 1 || (activity = this.f15098do) == null) {
            m7881goto(strArr);
        } else {
            MainActivity.f12318do = (AsyncTaskC3561qK) new AsyncTaskC3561qK(activity).execute(new Void[0]);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m7881goto(String[] strArr) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        C3210kN.m7247const(f15095for);
        Activity activity = this.f15098do;
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i++) {
                if (i == strArr.length - 2) {
                    f15094do = true;
                }
                C3948ww.m8598do(activity, strArr[i]);
            }
        }
        try {
            if (MainActivity.f12318do != null && ((FK.f1009const.getText().toString().contains("Error") || FK.f1009const.getText().toString().contains("uid")) && ((FK.f1016else.getText().toString().contains("NOT") || FK.f1016else.getText().toString().contains("Installed") || QF.f2889do) && MainActivity.f12316case))) {
                MainActivity.f12321this = FK.f1004break.getText().toString().contains(activity.getString(R.string.rcrSetuidNRootYCY)) || FK.f1004break.getText().toString().contains(activity.getString(R.string.rcrSetuidYRootY));
                if (!MainActivity.f12317catch) {
                    boolean z = MainActivity.f12320goto;
                    String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    if (z && MainActivity.f12321this && MainActivity.f12315break) {
                        String str2 = Build.MODEL;
                        if (str2 != null) {
                            str = str2;
                        }
                        C3210kN.m7243break("1,2,3", str);
                    } else if (MainActivity.f12320goto && MainActivity.f12321this) {
                        TextView textView4 = FK.f1009const;
                        if (textView4 == null || TextUtils.isEmpty(textView4.getText().toString())) {
                            String str3 = Build.MODEL;
                            if (str3 != null) {
                                str = str3;
                            }
                        } else {
                            str = "Stage 3: " + FK.f1009const.getText().toString();
                        }
                        C3210kN.m7243break("1,2", str);
                    } else if (MainActivity.f12320goto && MainActivity.f12315break) {
                        TextView textView5 = FK.f1004break;
                        if (textView5 == null || TextUtils.isEmpty(textView5.getText().toString())) {
                            String str4 = Build.MODEL;
                            if (str4 != null) {
                                str = str4;
                            }
                        } else {
                            str = "Stage 2: " + FK.f1004break.getText().toString();
                        }
                        C3210kN.m7243break("1,3", str);
                    } else if (MainActivity.f12321this && MainActivity.f12315break) {
                        TextView textView6 = FK.f1016else;
                        if (textView6 == null || TextUtils.isEmpty(textView6.getText().toString())) {
                            String str5 = Build.MODEL;
                            if (str5 != null) {
                                str = str5;
                            }
                        } else {
                            str = "Stage 1: " + FK.f1016else.getText().toString();
                        }
                        C3210kN.m7243break("2,3", str);
                    } else {
                        String str6 = null;
                        if (MainActivity.f12320goto) {
                            TextView textView7 = FK.f1004break;
                            if (textView7 == null || TextUtils.isEmpty(textView7.getText().toString()) || (textView3 = FK.f1009const) == null || TextUtils.isEmpty(textView3.getText().toString())) {
                                TextView textView8 = FK.f1004break;
                                if (textView8 == null || TextUtils.isEmpty(textView8.getText().toString())) {
                                    TextView textView9 = FK.f1009const;
                                    if (textView9 != null && !TextUtils.isEmpty(textView9.getText().toString())) {
                                        str6 = "Stage 3: " + FK.f1009const.getText().toString();
                                    }
                                } else {
                                    str6 = "Stage 2: " + FK.f1004break.getText().toString();
                                }
                            } else {
                                str6 = "Stage 2: " + FK.f1004break.getText().toString() + "; Stage 3: " + FK.f1009const.getText().toString();
                            }
                            if (str6 != null) {
                                str = str6;
                            } else {
                                String str7 = Build.MODEL;
                                if (str7 != null) {
                                    str = str7;
                                }
                            }
                            C3210kN.m7243break(AppEventsConstants.EVENT_PARAM_VALUE_YES, str);
                        } else if (MainActivity.f12321this) {
                            TextView textView10 = FK.f1016else;
                            if (textView10 == null || TextUtils.isEmpty(textView10.getText().toString()) || (textView2 = FK.f1009const) == null || TextUtils.isEmpty(textView2.getText().toString())) {
                                TextView textView11 = FK.f1016else;
                                if (textView11 == null || TextUtils.isEmpty(textView11.getText().toString())) {
                                    TextView textView12 = FK.f1009const;
                                    if (textView12 != null && !TextUtils.isEmpty(textView12.getText().toString())) {
                                        str6 = "Stage 3: " + FK.f1009const.getText().toString();
                                    }
                                } else {
                                    str6 = "Stage 1: " + FK.f1016else.getText().toString();
                                }
                            } else {
                                str6 = "Stage 1: " + FK.f1016else.getText().toString() + "; Stage 3: " + FK.f1009const.getText().toString();
                            }
                            if (str6 != null) {
                                str = str6;
                            } else {
                                String str8 = Build.MODEL;
                                if (str8 != null) {
                                    str = str8;
                                }
                            }
                            C3210kN.m7243break("2", str);
                        } else if (MainActivity.f12315break) {
                            TextView textView13 = FK.f1016else;
                            if (textView13 == null || TextUtils.isEmpty(textView13.getText().toString()) || (textView = FK.f1004break) == null || TextUtils.isEmpty(textView.getText().toString())) {
                                TextView textView14 = FK.f1016else;
                                if (textView14 == null || TextUtils.isEmpty(textView14.getText().toString())) {
                                    TextView textView15 = FK.f1004break;
                                    if (textView15 != null && !TextUtils.isEmpty(textView15.getText().toString())) {
                                        str6 = "Stage 2: " + FK.f1004break.getText().toString();
                                    }
                                } else {
                                    str6 = "Stage 1: " + FK.f1016else.getText().toString();
                                }
                            } else {
                                str6 = "Stage 1: " + FK.f1016else.getText().toString() + "; Stage 2: " + FK.f1004break.getText().toString();
                            }
                            if (str6 != null) {
                                str = str6;
                            } else {
                                String str9 = Build.MODEL;
                                if (str9 != null) {
                                    str = str9;
                                }
                            }
                            C3210kN.m7243break("3", str);
                        } else {
                            String str10 = Build.MODEL;
                            if (str10 != null) {
                                str = str10;
                            }
                            C3210kN.m7243break(AppEventsConstants.EVENT_PARAM_VALUE_NO, str);
                        }
                    }
                    MainActivity.f12317catch = true;
                }
            }
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        C0251He.m865if(activity);
        if (XJ.m2828new() && FK.f1014do != null && MainActivity.f12317catch) {
            ProgressWheelv2 progressWheelv2 = FK.f1014do;
            progressWheelv2.f12258case = -10044566;
            progressWheelv2.m6387if();
            if (!progressWheelv2.f12276new) {
                progressWheelv2.invalidate();
            }
            if (MainActivity.f12320goto && MainActivity.f12321this && MainActivity.f12315break) {
                FK.f1014do.m6386do(1.0f);
                return;
            }
            if (MainActivity.f12320goto && MainActivity.f12321this) {
                FK.f1014do.m6386do(0.4f);
            } else if (MainActivity.f12320goto) {
                FK.f1014do.m6386do(0.2f);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7882if() {
        int i = f15095for;
        Activity activity = this.f15098do;
        if (i == 1 || i % 4 == 1) {
            if (f15096if != 1) {
                TextView textView = FK.f1012do;
                StringBuilder sb = new StringBuilder();
                sb.append(activity.getResources().getString(R.string.progressCardMsg, (16 - f15095for) + m7872break(16 - f15095for)));
                sb.append(".");
                textView.setText(sb.toString());
                return;
            }
            TextView textView2 = FK.f1012do;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(activity.getResources().getString(R.string.progressCardMsg_2ndAttempt));
            sb2.append(" ");
            sb2.append(activity.getResources().getString(R.string.progressCardMsg, (28 - f15095for) + m7872break(28 - f15095for)));
            sb2.append(".");
            textView2.setText(sb2.toString());
            return;
        }
        if (i == 2 || i % 4 == 2) {
            if (f15096if != 1) {
                TextView textView3 = FK.f1012do;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(activity.getResources().getString(R.string.progressCardMsg, (16 - f15095for) + m7872break(16 - f15095for)));
                sb3.append("..");
                textView3.setText(sb3.toString());
                return;
            }
            TextView textView4 = FK.f1012do;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(activity.getResources().getString(R.string.progressCardMsg_2ndAttempt));
            sb4.append(" ");
            sb4.append(activity.getResources().getString(R.string.progressCardMsg, (28 - f15095for) + m7872break(28 - f15095for)));
            sb4.append("..");
            textView4.setText(sb4.toString());
            return;
        }
        if (i != 3 && i % 4 != 3) {
            if (i == 4 || i % 4 == 0) {
                if (f15096if != 1) {
                    FK.f1012do.setText(activity.getResources().getString(R.string.progressCardMsg, (16 - f15095for) + m7872break(16 - f15095for)));
                    return;
                }
                TextView textView5 = FK.f1012do;
                StringBuilder sb5 = new StringBuilder();
                sb5.append(activity.getResources().getString(R.string.progressCardMsg_2ndAttempt));
                sb5.append(" ");
                sb5.append(activity.getResources().getString(R.string.progressCardMsg, (28 - f15095for) + m7872break(28 - f15095for)));
                textView5.setText(sb5.toString());
                return;
            }
            return;
        }
        if (f15096if != 1) {
            TextView textView6 = FK.f1012do;
            StringBuilder sb6 = new StringBuilder();
            sb6.append(activity.getResources().getString(R.string.progressCardMsg, (16 - f15095for) + m7872break(16 - f15095for)));
            sb6.append("...");
            textView6.setText(sb6.toString());
            return;
        }
        TextView textView7 = FK.f1012do;
        StringBuilder sb7 = new StringBuilder();
        sb7.append(activity.getResources().getString(R.string.progressCardMsg_2ndAttempt));
        sb7.append(" ");
        sb7.append(activity.getResources().getString(R.string.progressCardMsg, (28 - f15095for) + m7872break(28 - f15095for)));
        sb7.append("...");
        textView7.setText(sb7.toString());
    }

    @Override // android.os.AsyncTask
    public final void onCancelled(String[] strArr) {
        m7880else(strArr);
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(String[] strArr) {
        String[] strArr2 = strArr;
        if (isCancelled()) {
            return;
        }
        m7883try();
        m7881goto(strArr2);
        super.onPostExecute(strArr2);
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        try {
            boolean m2828new = XJ.m2828new();
            Activity activity = this.f15098do;
            if (m2828new) {
                XJ.m2825do(activity);
                try {
                    ProgressWheelv2 progressWheelv2 = FK.f1014do;
                    if (progressWheelv2 != null) {
                        if (progressWheelv2.f12276new) {
                            progressWheelv2.f12276new = false;
                            progressWheelv2.f12266for = 0.0f;
                            progressWheelv2.f12274new = 0.0f;
                            progressWheelv2.invalidate();
                        } else {
                            progressWheelv2.f12271if = SystemClock.uptimeMillis();
                            progressWheelv2.f12276new = true;
                            progressWheelv2.invalidate();
                        }
                    }
                } catch (Exception e) {
                    C0766bi.m4854do().m4855for(e);
                }
                FK.m608if(true, activity);
            } else {
                ProgressDialog progressDialog = new ProgressDialog(activity);
                this.f15099do = progressDialog;
                progressDialog.setMessage(activity.getString(R.string.progessDialogMsg, "Root Checker Pro"));
                this.f15099do.setCancelable(true);
                this.f15099do.show();
                this.f15099do.setOnCancelListener(new Cdo());
            }
            new Cif().start();
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
    }

    @Override // android.os.AsyncTask
    public final void onProgressUpdate(Integer[] numArr) {
        Integer[] numArr2 = numArr;
        try {
            if (f15096if == 1) {
                f15095for = numArr2[0].intValue() + 16;
            } else {
                f15095for = numArr2[0].intValue();
            }
            if (!XJ.m2828new() || FK.f1012do == null || this.f15098do == null || isCancelled() || getStatus() == AsyncTask.Status.FINISHED) {
                return;
            }
            m7882if();
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m7883try() {
        if (!XJ.m2828new()) {
            ProgressDialog progressDialog = this.f15099do;
            if (progressDialog != null) {
                try {
                    if (progressDialog.isShowing()) {
                        progressDialog.dismiss();
                        return;
                    }
                    return;
                } catch (Exception e) {
                    C0766bi.m4854do().m4855for(e);
                    return;
                }
            }
            return;
        }
        try {
            ProgressWheelv2 progressWheelv2 = FK.f1014do;
            if (progressWheelv2 != null) {
                if (progressWheelv2.f12276new) {
                    progressWheelv2.f12276new = false;
                    progressWheelv2.f12266for = 0.0f;
                    progressWheelv2.f12274new = 0.0f;
                    progressWheelv2.invalidate();
                } else {
                    progressWheelv2.f12271if = SystemClock.uptimeMillis();
                    progressWheelv2.f12276new = true;
                    progressWheelv2.invalidate();
                }
            }
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
        FK.m608if(false, this.f15098do);
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        m7880else(this.f15100do);
    }
}
