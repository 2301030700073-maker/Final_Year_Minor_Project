package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import com.facebook.internal.AnalyticsEvents;
import com.google.firebase.perf.metrics.Trace;
import com.joeykrim.rootcheck.MainActivity;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheck.Views.ProgressWheelv2;
import defpackage.SD;
import java.io.IOException;

/* renamed from: rK, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class AsyncTaskC3619rK extends AsyncTask<Void, Integer, String> {

    /* renamed from: new, reason: not valid java name */
    public static int f15259new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Activity f15261do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ProgressDialog f15262do;

    /* renamed from: do, reason: not valid java name */
    public final int f15260do = 24;

    /* renamed from: if, reason: not valid java name */
    public final int f15264if = 12;

    /* renamed from: for, reason: not valid java name */
    public int f15263for = 0;

    /* renamed from: rK$do, reason: invalid class name */
    public class Cdo implements DialogInterface.OnCancelListener {
        public Cdo() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            AsyncTaskC3619rK asyncTaskC3619rK = AsyncTaskC3619rK.this;
            asyncTaskC3619rK.f15263for = 1;
            asyncTaskC3619rK.cancel(true);
            C3210kN.m7250for("VerifyRootCancelDialog", AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED);
        }
    }

    /* renamed from: rK$if, reason: invalid class name */
    public class Cif extends Thread {
        public Cif() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            long currentTimeMillis = System.currentTimeMillis();
            AsyncTaskC3619rK asyncTaskC3619rK = AsyncTaskC3619rK.this;
            long j = (asyncTaskC3619rK.f15260do * 1000) + currentTimeMillis;
            if (MainActivity.f12242try == 1) {
                j = (asyncTaskC3619rK.f15264if * 1000) + currentTimeMillis;
            }
            int i = 0;
            while (System.currentTimeMillis() < j && !asyncTaskC3619rK.isCancelled() && asyncTaskC3619rK.getStatus() != AsyncTask.Status.FINISHED) {
                try {
                    if (System.currentTimeMillis() > 1000 + currentTimeMillis) {
                        currentTimeMillis = System.currentTimeMillis();
                        i++;
                        asyncTaskC3619rK.publishProgress(Integer.valueOf(i));
                    }
                } catch (NullPointerException e) {
                    C0766bi.m4854do().m4855for(e);
                    return;
                }
            }
            if (System.currentTimeMillis() < j || asyncTaskC3619rK.isCancelled() || asyncTaskC3619rK.getStatus() == AsyncTask.Status.FINISHED) {
                return;
            }
            asyncTaskC3619rK.f15263for = 2;
            asyncTaskC3619rK.cancel(true);
            C3210kN.m7250for("VerifyRootCancelTimeoutTriggered", Integer.toString(AsyncTaskC3619rK.f15259new));
        }
    }

    public AsyncTaskC3619rK(Activity activity) {
        this.f15261do = activity;
    }

    @Override // android.os.AsyncTask
    public final String doInBackground(Void[] voidArr) {
        try {
            SD.Cdo m2122if = new SD().f3476do.m2122if();
            String str = m2122if.f3478do;
            if (str != null && str.contains("uid=0")) {
                return str;
            }
            StringBuilder sb = new StringBuilder("Error: stderr: ");
            sb.append(m2122if.f3479if);
            sb.append(", stdout: ");
            sb.append(str);
            sb.append(", exit_value: ");
            Integer num = m2122if.f3477do;
            sb.append(num != null ? Integer.toString(num.intValue()) : "null");
            return sb.toString();
        } catch (IOException e) {
            C0766bi.m4854do().m4855for(e);
            e.toString();
            return "Error: IOException: " + e;
        } catch (InterruptedException e2) {
            C0766bi.m4854do().m4855for(e2);
            e2.toString();
            int i = this.f15263for;
            if (i != 2) {
                if (i != 1) {
                    return "Error: Thread interrupted for external unknown reason";
                }
                MainActivity.f12231break = true;
                return "Error: User cancelled via Progress Dialog";
            }
            MainActivity.f12231break = true;
            MainActivity.f12242try++;
            StringBuilder sb2 = new StringBuilder("Error: Timeout ");
            sb2.append(Integer.toString(f15259new));
            sb2.append(" seconds on ");
            sb2.append(MainActivity.f12242try);
            sb2.append(MainActivity.f12242try == 1 ? " attempt" : " attempts");
            return sb2.toString();
        } catch (NullPointerException e3) {
            C0766bi.m4854do().m4855for(e3);
            e3.toString();
            return "Error: NPE: " + e3;
        } catch (RuntimeException e4) {
            C0766bi.m4854do().m4855for(e4);
            e4.toString();
            return "Error: RuntimeException: " + e4;
        } catch (Exception e5) {
            C0766bi.m4854do().m4855for(e5);
            e5.toString();
            return "Error: Exception: " + e5;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7947if() {
        int i;
        Activity activity = this.f15261do;
        C3443oK m7703new = C3443oK.m7703new(activity);
        TextView textView = m7703new != null ? m7703new.f14734do : null;
        if (textView == null || activity == null) {
            return;
        }
        int i2 = f15259new;
        if (i2 == 1 || (i = i2 % 4) == 1) {
            if (MainActivity.f12242try != 1) {
                textView.setText(activity.getResources().getString(R.string.progressCardMsg) + ".");
                return;
            }
            textView.setText(activity.getResources().getString(R.string.progressCardMsg_2ndAttempt) + " " + activity.getResources().getString(R.string.progressCardMsg) + ".");
            return;
        }
        if (i2 == 2 || i == 2) {
            if (MainActivity.f12242try != 1) {
                textView.setText(activity.getResources().getString(R.string.progressCardMsg) + "..");
                return;
            }
            textView.setText(activity.getResources().getString(R.string.progressCardMsg_2ndAttempt) + " " + activity.getResources().getString(R.string.progressCardMsg) + "..");
            return;
        }
        if (i2 != 3 && i != 3) {
            if (i2 == 4 || i == 0) {
                if (MainActivity.f12242try != 1) {
                    textView.setText(activity.getResources().getString(R.string.progressCardMsg));
                    return;
                }
                textView.setText(activity.getResources().getString(R.string.progressCardMsg_2ndAttempt) + " " + activity.getResources().getString(R.string.progressCardMsg));
                return;
            }
            return;
        }
        if (MainActivity.f12242try != 1) {
            textView.setText(activity.getResources().getString(R.string.progressCardMsg) + "...");
            return;
        }
        textView.setText(activity.getResources().getString(R.string.progressCardMsg_2ndAttempt) + " " + activity.getResources().getString(R.string.progressCardMsg) + "...");
    }

    @Override // android.os.AsyncTask
    public final void onCancelled(String str) {
        AppCompatActivity appCompatActivity;
        String str2 = str;
        ProgressDialog progressDialog = this.f15262do;
        Trace trace = VJ.f4080do;
        if (progressDialog != null) {
            try {
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
        }
        C0420Ou.f2685do = null;
        Activity activity = this.f15261do;
        VJ.c(activity);
        C3443oK m7703new = C3443oK.m7703new(activity);
        if (m7703new != null) {
            m7703new.m7706else();
        }
        TextView textView = m7703new != null ? m7703new.f14739for : null;
        if (textView != null && textView.getVisibility() == 8) {
            textView.setVisibility(0);
        }
        if (MainActivity.f12242try == 1 && (appCompatActivity = C0420Ou.f2680do) != null) {
            new AsyncTaskC3619rK(appCompatActivity).execute(new Void[0]);
        } else if (this.f15263for != 1) {
            C3210kN.m7247const(f15259new);
            MainActivity.f12236else = false;
            MainActivity.f12232case++;
            C4007xw.m8678do(activity, str2, System.currentTimeMillis(), true);
        }
        Trace trace2 = VJ.f4080do;
        if (trace2 != null) {
            trace2.stop();
        }
        onCancelled();
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(String str) {
        String str2 = str;
        ProgressDialog progressDialog = this.f15262do;
        Trace trace = VJ.f4080do;
        if (progressDialog != null) {
            try {
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
        }
        C0420Ou.f2685do = null;
        Activity activity = this.f15261do;
        VJ.c(activity);
        C3443oK m7703new = C3443oK.m7703new(activity);
        if (m7703new != null) {
            m7703new.m7706else();
        }
        TextView textView = m7703new != null ? m7703new.f14739for : null;
        if (textView != null && textView.getVisibility() == 8) {
            textView.setVisibility(0);
        }
        C3210kN.m7247const(f15259new);
        MainActivity.f12236else = false;
        MainActivity.f12232case++;
        C4007xw.m8678do(activity, str2, System.currentTimeMillis(), true);
        if (!"VERIFY ROOT".equalsIgnoreCase(C0420Ou.m1697new())) {
            C0420Ou.m1687break("VERIFY ROOT");
        }
        Trace trace2 = VJ.f4080do;
        if (trace2 != null) {
            trace2.stop();
        }
        super.onPostExecute(str2);
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        Activity activity = this.f15261do;
        try {
            C3443oK m7703new = C3443oK.m7703new(activity);
            ProgressWheelv2 progressWheelv2 = m7703new != null ? m7703new.f14737do : null;
            CardView cardView = m7703new != null ? m7703new.f14735do : null;
            TextView textView = m7703new != null ? m7703new.f14745new : null;
            TextView textView2 = m7703new != null ? m7703new.f14748try : null;
            TextView textView3 = m7703new != null ? m7703new.f14728case : null;
            TextView textView4 = m7703new != null ? m7703new.f14734do : null;
            TextView textView5 = m7703new != null ? m7703new.f14739for : null;
            if (progressWheelv2 != null) {
                VJ.m2577new(activity);
                VJ.c(activity);
                if (cardView != null) {
                    cardView.setClickable(false);
                }
                if (textView != null) {
                    textView.setVisibility(8);
                }
                if (textView2 != null) {
                    textView2.setVisibility(8);
                }
                if (textView3 != null) {
                    textView3.setVisibility(8);
                }
                if (textView4 != null && activity != null) {
                    textView4.setText(activity.getResources().getString(R.string.progressCardMsg));
                    textView4.setVisibility(0);
                    if (textView5 != null) {
                        textView5.setVisibility(8);
                    }
                }
            } else {
                if (activity == null) {
                    return;
                }
                ProgressDialog progressDialog = new ProgressDialog(activity);
                this.f15262do = progressDialog;
                progressDialog.setTitle(activity.getString(R.string.verifyRootAccess));
                this.f15262do.setMessage(activity.getString(R.string.progessDialogMsg));
                this.f15262do.setCancelable(true);
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    this.f15262do.show();
                }
                this.f15262do.setOnCancelListener(new Cdo());
            }
            new Cif().start();
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        super.onPreExecute();
    }

    @Override // android.os.AsyncTask
    public final void onProgressUpdate(Integer[] numArr) {
        Activity activity = this.f15261do;
        Integer[] numArr2 = numArr;
        try {
            C3443oK m7703new = C3443oK.m7703new(activity);
            ProgressWheelv2 progressWheelv2 = m7703new != null ? m7703new.f14737do : null;
            CardView cardView = m7703new != null ? m7703new.f14735do : null;
            TextView textView = m7703new != null ? m7703new.f14745new : null;
            TextView textView2 = m7703new != null ? m7703new.f14748try : null;
            TextView textView3 = m7703new != null ? m7703new.f14728case : null;
            TextView textView4 = m7703new != null ? m7703new.f14734do : null;
            TextView textView5 = m7703new != null ? m7703new.f14739for : null;
            if (MainActivity.f12242try == 1) {
                f15259new = this.f15260do + numArr2[0].intValue();
            } else {
                f15259new = numArr2[0].intValue();
            }
            if (!isCancelled() && getStatus() != AsyncTask.Status.FINISHED && textView4 != null && activity != null) {
                m7947if();
            }
            if (isCancelled() || getStatus() == AsyncTask.Status.FINISHED || progressWheelv2 == null || progressWheelv2.f12276new) {
                return;
            }
            VJ.m2577new(activity);
            try {
                C3443oK m7703new2 = C3443oK.m7703new(activity);
                ProgressWheelv2 progressWheelv22 = m7703new2 != null ? m7703new2.f14737do : null;
                if (progressWheelv22 != null) {
                    progressWheelv22.f12271if = SystemClock.uptimeMillis();
                    progressWheelv22.f12276new = true;
                    progressWheelv22.invalidate();
                }
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
            if (cardView != null) {
                cardView.setClickable(false);
            }
            if (textView != null) {
                textView.setVisibility(8);
            }
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            if (textView4 == null || activity == null || textView5 == null) {
                return;
            }
            textView5.setVisibility(8);
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
    }
}
