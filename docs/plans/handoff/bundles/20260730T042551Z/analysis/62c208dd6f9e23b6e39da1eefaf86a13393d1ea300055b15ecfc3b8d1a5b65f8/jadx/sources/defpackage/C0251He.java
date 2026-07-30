package defpackage;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Build;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.perf.metrics.Trace;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheckp.MainActivity;

/* renamed from: He, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0251He {
    /* renamed from: break, reason: not valid java name */
    public static void m856break(Activity activity, TextView textView, TextView textView2, String str, CardView cardView) {
        textView2.setText(str);
        FK.f1020for.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        FK.f1020for.getMeasuredHeight();
        if (textView2.getText().toString().contains("Error")) {
            textView.setTextColor(activity.getResources().getColor(R.color.resultFailv2));
            textView.setText(activity.getString(R.string.idStatusTitleError));
            FK.m607do(3, true);
        } else {
            textView.setTextColor(activity.getResources().getColor(R.color.resultSuccessv2));
            textView.setText(activity.getString(R.string.idStatusTitleSuccess));
            FK.m607do(3, false);
        }
        textView.setTypeface(textView.getTypeface(), 1);
        if (textView2.getText().toString().contains("Root user id:") || textView2.getText().toString().contains("Root group id:") || textView2.getText().toString().contains("Root SELinux context:")) {
            String charSequence = textView2.getText().toString();
            int indexOf = charSequence.indexOf("Root user id:");
            int indexOf2 = charSequence.indexOf("Root group id:");
            int indexOf3 = charSequence.indexOf("Root SELinux context:");
            Spannable spannable = (Spannable) textView2.getText();
            if (indexOf != -1) {
                spannable.setSpan(new UnderlineSpan(), indexOf, 12, 33);
            }
            if (indexOf2 != -1) {
                spannable.setSpan(new UnderlineSpan(), indexOf2, (indexOf2 + 14) - 1, 33);
            }
            if (indexOf3 != -1) {
                spannable.setSpan(new UnderlineSpan(), indexOf3, (indexOf3 + 21) - 1, 33);
            }
        }
        if (XJ.m2826for() >= 21) {
            C0420Ou.m1692do(activity.getApplicationContext(), cardView);
        }
        cardView.setVisibility(0);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m857case(Activity activity) {
        if (!MainActivity.f12317catch || !MainActivity.f12316case || FK.f1028if == null || FK.f1043try == null || FK.f1033new == null) {
            return;
        }
        boolean z = false;
        if (C3772tx.m8343public() != null && C3772tx.m8343public().getInt("recommend_mode", 1) == 3) {
            FK.f1028if.setVisibility(8);
            return;
        }
        if (!C3772tx.m8347super()) {
            if (C3772tx.m8343public() != null && C3772tx.m8343public().getInt("recommend_mode", 1) == 2) {
                z = true;
            }
            if (z) {
                if ((MainActivity.f12320goto && MainActivity.f12321this && MainActivity.f12315break) || (MainActivity.f12320goto && MainActivity.f12321this)) {
                    FK.f1043try.setText(activity.getString(R.string.recommendDetailsIssue) + " " + activity.getString(R.string.recommendDetailsUninstallIssue12) + System.getProperty("line.separator") + System.getProperty("line.separator") + activity.getString(R.string.recommendDetailsFeedback) + " " + activity.getString(R.string.recommendDetailsUninstallFeedback12));
                } else if (MainActivity.f12320goto) {
                    FK.f1043try.setText(activity.getString(R.string.recommendDetailsIssue) + " " + activity.getString(R.string.recommendDetailsUninstallIssue1) + System.getProperty("line.separator") + System.getProperty("line.separator") + activity.getString(R.string.recommendDetailsFeedback) + " " + activity.getString(R.string.recommendDetailsUninstallFeedback1));
                } else {
                    if (!MainActivity.f12321this) {
                        if (MainActivity.f12315break) {
                            FK.f1028if.setVisibility(8);
                            return;
                        } else {
                            FK.f1028if.setVisibility(8);
                            return;
                        }
                    }
                    FK.f1043try.setText(activity.getString(R.string.recommendDetailsIssue) + " " + activity.getString(R.string.recommendDetailsUninstallIssue2) + System.getProperty("line.separator") + System.getProperty("line.separator") + activity.getString(R.string.recommendDetailsFeedback) + " " + activity.getString(R.string.recommendDetailsUninstallFeedback2));
                }
                FK.f1033new.setText(activity.getString(R.string.recommendTitleUninstall));
                return;
            }
            return;
        }
        if ((MainActivity.f12320goto && MainActivity.f12321this && MainActivity.f12315break) || ((MainActivity.f12320goto && MainActivity.f12315break) || ((MainActivity.f12321this && MainActivity.f12315break) || MainActivity.f12315break))) {
            FK.f1028if.setVisibility(8);
            return;
        }
        if (MainActivity.f12320goto && MainActivity.f12321this) {
            FK.f1043try.setText(activity.getString(R.string.recommendDetailsIssue) + " " + activity.getString(R.string.recommendDetailsInstallIssue12) + System.getProperty("line.separator") + System.getProperty("line.separator") + activity.getString(R.string.recommendDetailsFeedback) + " " + activity.getString(R.string.recommendDetailsInstallFeedback12));
        } else if (MainActivity.f12320goto) {
            FK.f1043try.setText(activity.getString(R.string.recommendDetailsIssue) + " " + activity.getString(R.string.recommendDetailsInstallIssue1) + System.getProperty("line.separator") + System.getProperty("line.separator") + activity.getString(R.string.recommendDetailsFeedback) + " " + activity.getString(R.string.recommendDetailsInstallFeedback1));
        } else if (MainActivity.f12321this) {
            FK.f1043try.setText(activity.getString(R.string.recommendDetailsIssue) + " " + activity.getString(R.string.recommendDetailsInstallIssue2) + System.getProperty("line.separator") + System.getProperty("line.separator") + activity.getString(R.string.recommendDetailsFeedback) + " " + activity.getString(R.string.recommendDetailsInstallFeedback2));
        } else {
            TextView textView = FK.f1043try;
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getString(R.string.recommendDetailsIssue));
            sb.append(" ");
            sb.append(activity.getString(R.string.recommendDetailsInstallIssue0));
            sb.append(System.getProperty("line.separator"));
            sb.append(System.getProperty("line.separator"));
            sb.append(activity.getString(R.string.recommendDetailsFeedback));
            sb.append(" ");
            Object[] objArr = new Object[1];
            String str = Build.MODEL;
            if (str == null) {
                str = activity.getString(R.string.errorUnknown);
            }
            objArr[0] = str;
            sb.append(activity.getString(R.string.recommendDetailsInstallFeedback0, objArr));
            textView.setText(sb.toString());
        }
        FK.f1033new.setText(activity.getString(R.string.recommendTitleInstall));
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m858catch(boolean z, Activity activity) {
        if (z) {
            FK.f1037static.setText(C3948ww.f16496goto);
            if (XJ.m2826for() >= 21) {
                C0420Ou.m1692do(activity.getApplicationContext(), FK.f1040this);
            }
            FK.f1040this.setVisibility(0);
            return;
        }
        C3384nK.f14500for.setText(C3948ww.f16491do);
        if (XJ.m2826for() >= 21) {
            C0420Ou.m1692do(activity.getApplicationContext(), C3384nK.f14504if);
        }
        C3384nK.f14504if.setVisibility(0);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m859class(Activity activity) {
        String str;
        String str2 = "Not provided";
        String str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (!C3948ww.f16492do) {
            C3384nK.f14497do.setText(activity.getString(R.string.abbcError));
            C3384nK.f14497do.setTextColor(activity.getResources().getColor(R.color.resultFailv2));
            C3384nK.f14497do.setVisibility(0);
            C3384nK.f14496do.setImageDrawable(activity.getResources().getDrawable(R.drawable.busybox_status_no));
            return;
        }
        C3384nK.f14497do.setText(activity.getString(R.string.busyboxSuccessMsg));
        C3384nK.f14497do.setTextColor(activity.getResources().getColor(R.color.resultSuccessv2));
        C3384nK.f14497do.setVisibility(0);
        C3384nK.f14496do.setImageDrawable(activity.getResources().getDrawable(R.drawable.busybox_status_yes));
        int i = 1;
        try {
            String str4 = C3948ww.f16497if;
            str = str4.substring(str4.indexOf(activity.getString(R.string.bbBinaryLoc)) + activity.getString(R.string.bbBinaryLoc).length() + 2);
        } catch (Exception e) {
            C0766bi m4854do = C0766bi.m4854do();
            String str5 = Build.MODEL;
            if (str5 == null) {
                str5 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            String str6 = C3948ww.f16497if;
            C0445Qb c0445Qb = m4854do.f8440do;
            c0445Qb.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb, str5, str6, i));
            C0766bi.m4854do().m4856if("BusyBox Binary Location Exception Details: " + C3948ww.f16497if);
            C0766bi.m4854do().m4855for(e);
            str = "Not provided";
        }
        m866new(activity, C3384nK.f14505new, str, C3384nK.f14501for);
        try {
            String str7 = C3948ww.f16495for;
            str2 = str7.substring(str7.indexOf(activity.getString(R.string.bbBinaryFileInfo)) + activity.getString(R.string.bbBinaryFileInfo).length() + 2);
        } catch (Exception e2) {
            C0766bi m4854do2 = C0766bi.m4854do();
            String str8 = Build.MODEL;
            if (str8 != null) {
                str3 = str8;
            }
            String str9 = C3948ww.f16495for;
            C0445Qb c0445Qb2 = m4854do2.f8440do;
            c0445Qb2.f2970do.f13734do.m6567do(new RunnableC0443Pv(c0445Qb2, str3, str9, i));
            C0766bi.m4854do().m4856if("BusyBox Binary Info Exception Details: " + C3948ww.f16495for);
            C0766bi.m4854do().m4855for(e2);
        }
        m866new(activity, C3384nK.f14508try, str2, C3384nK.f14506new);
        m866new(activity, C3384nK.f14499else, C3948ww.f16499new, C3384nK.f14509try);
        m866new(activity, C3384nK.f14507this, C3948ww.f16501try, C3384nK.f14495case);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m860const(Activity activity) {
        if (C3948ww.f16498if) {
            FK.f1012do.setText(activity.getString(R.string.rootSuccessMsgv2));
            FK.f1012do.setTextColor(activity.getResources().getColor(R.color.resultSuccessv2));
            FK.f1012do.setVisibility(0);
            FK.f1010do.setImageDrawable(activity.getResources().getDrawable(R.drawable.root_status_yes));
            return;
        }
        if (!MainActivity.f12320goto && !MainActivity.f12321this && !MainActivity.f12315break) {
            FK.f1012do.setText(activity.getString(R.string.rootFailMsgNotInstalled));
        } else if ((MainActivity.f12320goto && !MainActivity.f12321this && !MainActivity.f12315break) || (!MainActivity.f12320goto && MainActivity.f12321this && !MainActivity.f12315break)) {
            FK.f1012do.setText(activity.getString(R.string.rootFailMsgNotPropInstalled));
        } else if (MainActivity.f12320goto && MainActivity.f12321this && !MainActivity.f12315break) {
            FK.f1012do.setText(activity.getString(R.string.rootFailMsgNotPropOperating));
        } else {
            FK.f1012do.setText(activity.getString(R.string.rootFailMsgv3));
        }
        FK.f1012do.setTextColor(activity.getResources().getColor(R.color.resultFailv2));
        FK.f1012do.setVisibility(0);
        FK.f1010do.setImageDrawable(activity.getResources().getDrawable(R.drawable.root_status_no));
    }

    /* renamed from: do, reason: not valid java name */
    public static void m861do(Activity activity) {
        try {
            m859class(activity);
            m858catch(false, activity);
        } catch (Resources.NotFoundException e) {
            C0766bi.m4854do().m4855for(e);
        } catch (NullPointerException e2) {
            C0766bi.m4854do().m4855for(e2);
        } catch (Exception e3) {
            C0766bi.m4854do().m4855for(e3);
        } catch (OutOfMemoryError e4) {
            C0766bi.m4854do().m4855for(e4);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m862else(Activity activity) {
        if (activity == null) {
            return;
        }
        FK.f1035public.setText(activity.getString(R.string.prefixStatus) + " " + C3948ww.f16493else);
        if (XJ.m2826for() >= 21) {
            C0420Ou.m1692do(activity.getApplicationContext(), FK.f1024goto);
        }
        FK.f1024goto.setVisibility(0);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m863for(Activity activity) {
        if (activity == null) {
            return;
        }
        FK.f1041throw.setText(activity.getString(R.string.prefixStatus) + " " + C3948ww.f16486case);
        if (FK.f1012do.getText().equals(activity.getString(R.string.rootSuccessMsgv2)) || !FK.f1041throw.getText().toString().contains("ro.secure=0")) {
            Trace trace = VJ.f4080do;
            int color = C3772tx.m8345static() ? activity.getResources().getColor(R.color.textColorPrimary) : activity.getResources().getColor(R.color.textColorPrimaryInverse);
            if (color != -1) {
                FK.f1038super.setTextColor(color);
            }
        } else {
            FK.f1038super.setTextColor(activity.getResources().getColor(R.color.resultSuccessv2));
            TextView textView = FK.f1038super;
            textView.setTypeface(textView.getTypeface(), 1);
        }
        if (XJ.m2826for() >= 21) {
            C0420Ou.m1692do(activity.getApplicationContext(), FK.f1006case);
        }
        FK.f1006case.setVisibility(0);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m864goto(Activity activity, TextView textView, TextView textView2, String str, CardView cardView) {
        textView2.setText(str);
        FK.f1011do.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        FK.f1011do.getMeasuredHeight();
        if (textView2.getText().toString().contains("NOT") || QF.f2889do) {
            textView.setTextColor(activity.getResources().getColor(R.color.resultFailv2));
            textView.setText(activity.getString(R.string.SUAppTitleError));
            textView.setTypeface(textView.getTypeface(), 1);
            FK.m607do(1, true);
        } else if (textView2.getText().toString().contains("Installed")) {
            textView.setTextColor(activity.getResources().getColor(R.color.resultSuccessv2));
            textView.setText(activity.getString(R.string.SUAppTitleSuccess));
            textView.setTypeface(textView.getTypeface(), 1);
            FK.m607do(1, false);
        }
        if (XJ.m2826for() >= 21) {
            C0420Ou.m1692do(activity.getApplicationContext(), cardView);
        }
        cardView.setVisibility(0);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m865if(Activity activity) {
        try {
            m860const(activity);
            m864goto(activity, FK.f1005case, FK.f1016else, C3948ww.f16494final, FK.f1022for);
            m867this(activity);
            m856break(activity, FK.f1008class, FK.f1009const, C3948ww.f16488class, FK.f1044try);
            m863for(activity);
            if (C3948ww.f16490do != null) {
                m868try(activity);
            }
            m862else(activity);
            m858catch(true, activity);
            m857case(activity);
        } catch (Resources.NotFoundException e) {
            C0766bi.m4854do().m4855for(e);
        } catch (NullPointerException e2) {
            C0766bi.m4854do().m4855for(e2);
        } catch (Exception e3) {
            C0766bi.m4854do().m4855for(e3);
        } catch (OutOfMemoryError e4) {
            C0766bi.m4854do().m4855for(e4);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m866new(Activity activity, TextView textView, String str, CardView cardView) {
        textView.setText(str);
        if (XJ.m2826for() >= 21) {
            C0420Ou.m1692do(activity.getApplicationContext(), cardView);
        }
        cardView.setVisibility(0);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m867this(Activity activity) {
        int i;
        FK.f1004break.setText(C3948ww.f16489const);
        TextView textView = FK.f1004break;
        Spannable spannable = (Spannable) textView.getText();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int indexOf = textView.getText().toString().indexOf(activity.getString(R.string.sysFileSLoc), i2);
            if (indexOf != -1) {
                spannable.setSpan(new UnderlineSpan(), indexOf, activity.getString(R.string.sysFileSLoc).length() + indexOf, 33);
                spannable.setSpan(new AbsoluteSizeSpan(15, true), indexOf, activity.getString(R.string.sysFileSLoc).length() + indexOf, 33);
                indexOf++;
            }
            int i12 = indexOf;
            int indexOf2 = textView.getText().toString().indexOf(activity.getString(R.string.sysFileSystemless), i3);
            if (indexOf2 != -1) {
                spannable.setSpan(new UnderlineSpan(), indexOf2, activity.getString(R.string.sysFileSystemless).length() + indexOf2, 33);
                spannable.setSpan(new AbsoluteSizeSpan(15, true), indexOf2, activity.getString(R.string.sysFileSystemless).length() + indexOf2, 33);
                indexOf2++;
            }
            i3 = indexOf2;
            int indexOf3 = textView.getText().toString().indexOf(activity.getString(R.string.sysFileALoc), i4);
            if (indexOf3 == -1 || indexOf3 == 0) {
                i = i12;
                i4 = indexOf3;
            } else {
                i = i12;
                spannable.setSpan(new UnderlineSpan(), indexOf3, activity.getString(R.string.sysFileALoc).length() + indexOf3, 33);
                i4 = indexOf3 + 1;
            }
            int indexOf4 = textView.getText().toString().indexOf(activity.getString(R.string.sysFileASELoc), i5);
            if (indexOf4 == -1 || indexOf4 == 0) {
                i5 = indexOf4;
            } else {
                spannable.setSpan(new UnderlineSpan(), indexOf4, activity.getString(R.string.sysFileASELoc).length() + indexOf4, 33);
                i5 = indexOf4 + 1;
            }
            int indexOf5 = textView.getText().toString().indexOf(activity.getString(R.string.rcrCommand), i6);
            if (indexOf5 == -1 || indexOf5 == 0) {
                i6 = indexOf5;
            } else {
                spannable.setSpan(new UnderlineSpan(), indexOf5, (activity.getString(R.string.rcrCommand).length() + indexOf5) - 1, 33);
                i6 = indexOf5 + 1;
            }
            int indexOf6 = textView.getText().toString().indexOf(activity.getString(R.string.rcrResult), i7);
            if (indexOf6 == -1 || indexOf6 == 0) {
                i7 = indexOf6;
            } else {
                spannable.setSpan(new UnderlineSpan(), indexOf6, (activity.getString(R.string.rcrResult).length() + indexOf6) - 1, 33);
                i7 = indexOf6 + 1;
            }
            int indexOf7 = textView.getText().toString().indexOf(activity.getString(R.string.rcrAnalysis), i8);
            if (indexOf7 == -1 || indexOf7 == 0) {
                i8 = indexOf7;
            } else {
                spannable.setSpan(new UnderlineSpan(), indexOf7, (activity.getString(R.string.rcrAnalysis).length() + indexOf7) - 1, 33);
                i8 = indexOf7 + 1;
            }
            int indexOf8 = textView.getText().toString().indexOf(activity.getString(R.string.rcrVersion), i9);
            if (indexOf8 == -1 || indexOf8 == 0) {
                i9 = indexOf8;
            } else {
                spannable.setSpan(new UnderlineSpan(), indexOf8, (activity.getString(R.string.rcrVersion).length() + indexOf8) - 1, 33);
                i9 = indexOf8 + 1;
            }
            int indexOf9 = textView.getText().toString().indexOf(activity.getString(R.string.rcrSetuidYRootY), i10);
            if (indexOf9 == -1 || indexOf9 == 0) {
                i10 = indexOf9;
            } else {
                spannable.setSpan(new StyleSpan(1), indexOf9, (activity.getString(R.string.rcrSetuidYRootY).length() + indexOf9) - 1, 33);
                i10 = indexOf9 + 1;
            }
            int indexOf10 = textView.getText().toString().indexOf(activity.getString(R.string.rcrSetuidNRootYCY), i11);
            if (indexOf10 == -1 || indexOf10 == 0) {
                i11 = indexOf10;
            } else {
                spannable.setSpan(new StyleSpan(1), indexOf10, (activity.getString(R.string.rcrSetuidNRootYCY).length() + indexOf10) - 1, 33);
                i11 = indexOf10 + 1;
            }
            if (i6 == -1) {
                break;
            } else {
                i2 = i;
            }
        }
        FK.f1026if.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        FK.f1026if.getMeasuredHeight();
        if (FK.f1004break.getText().toString().contains(activity.getString(R.string.rcrSetuidNRootYCY)) || FK.f1004break.getText().toString().contains(activity.getString(R.string.rcrSetuidYRootY))) {
            FK.f1039this.setTextColor(activity.getResources().getColor(R.color.resultSuccessv2));
            FK.f1039this.setText(activity.getString(R.string.systemFilesTitleSuccess));
            FK.m607do(2, false);
        } else if (FK.f1004break.getText().toString().contains(activity.getString(R.string.rcrSetuidYRootN)) || FK.f1004break.getText().toString().contains(activity.getString(R.string.rcrSetuidNRootY)) || FK.f1004break.getText().toString().contains(activity.getString(R.string.rcrSetuidNRootN)) || FK.f1004break.getText().toString().contains(activity.getString(R.string.rcrRootN))) {
            FK.f1039this.setTextColor(activity.getResources().getColor(R.color.resultFailv2));
            FK.f1039this.setText(activity.getString(R.string.systemFilesTitleErrorConfig));
            FK.m607do(2, true);
        } else {
            FK.f1039this.setTextColor(activity.getResources().getColor(R.color.resultFailv2));
            FK.f1039this.setText(activity.getString(R.string.systemFilesTitleErrorInstall));
            FK.m607do(2, true);
        }
        TextView textView2 = FK.f1039this;
        textView2.setTypeface(textView2.getTypeface(), 1);
        if (XJ.m2826for() >= 21) {
            C0420Ou.m1692do(activity.getApplicationContext(), FK.f1034new);
        }
        FK.f1034new.setVisibility(0);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m868try(Activity activity) {
        Vw vw;
        char c;
        if (activity == null || FK.f1017else == null || FK.f1029import == null || FK.f1045while == null || (vw = C3948ww.f16490do) == null) {
            return;
        }
        Resources resources = activity.getResources();
        StringBuilder sb = new StringBuilder();
        sb.append(resources.getString(R.string.playIntegrityDevice));
        sb.append(" ");
        sb.append(vw.m2672do() ? resources.getString(R.string.playIntegrityVirtualDevice) : resources.getString(R.string.playIntegrityPassedNof3, Integer.valueOf(vw.f4263do)));
        sb.append("\n");
        sb.append(resources.getString(R.string.playIntegrityApp));
        sb.append(" ");
        String str = vw.f4264do;
        if (str == null) {
            str = "UNEVALUATED";
        }
        sb.append("PLAY_RECOGNIZED".equals(str) ? resources.getString(R.string.playIntegrityOfficialInstall) : "UNRECOGNIZED_VERSION".equals(str) ? resources.getString(R.string.playIntegrityAppModified) : resources.getString(R.string.playIntegrityNotAvailable));
        sb.append("\n");
        sb.append(resources.getString(R.string.playIntegrityLicense));
        sb.append(" ");
        String str2 = vw.f4266if;
        String str3 = str2 != null ? str2 : "UNEVALUATED";
        sb.append("LICENSED".equals(str3) ? resources.getString(R.string.playIntegrityLicensed) : "UNLICENSED".equals(str3) ? resources.getString(R.string.playIntegrityUnlicensed) : resources.getString(R.string.playIntegrityNotAvailable));
        FK.f1029import.setText(sb.toString());
        TextView textView = FK.f1045while;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(resources.getString(R.string.playIntegrityStatusTitle));
        char c2 = 3;
        if (vw.m2672do()) {
            c = 4;
        } else {
            int i = vw.f4263do;
            c = i >= 2 ? (char) 1 : i == 1 ? (char) 2 : (char) 3;
        }
        sb2.append(resources.getString(c == 1 ? R.string.playIntegrityStatusTitleSuffixPassed : R.string.playIntegrityStatusTitleSuffixNotPassed));
        textView.setText(sb2.toString());
        TextView textView2 = FK.f1045while;
        if (vw.m2672do()) {
            c2 = 4;
        } else {
            int i2 = vw.f4263do;
            if (i2 >= 2) {
                c2 = 1;
            } else if (i2 == 1) {
                c2 = 2;
            }
        }
        textView2.setTextColor(C0466Ra.getColor(activity, c2 == 1 ? R.color.resultSuccessv2 : c2 == 2 ? R.color.resultWarningv2 : c2 == 4 ? R.color.grey500 : R.color.resultFailv2));
        if (XJ.m2826for() >= 21) {
            C0420Ou.m1692do(activity.getApplicationContext(), FK.f1017else);
        }
        FK.f1017else.setVisibility(0);
    }
}
