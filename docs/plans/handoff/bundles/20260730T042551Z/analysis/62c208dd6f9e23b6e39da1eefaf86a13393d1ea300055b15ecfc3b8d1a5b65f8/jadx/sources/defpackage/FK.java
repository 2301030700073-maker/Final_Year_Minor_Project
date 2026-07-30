package defpackage;

import android.app.Activity;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.google.firebase.perf.metrics.Trace;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheck.Views.ProgressWheelv2;
import com.joeykrim.rootcheckp.MainActivity;

/* loaded from: classes3.dex */
public final class FK {

    /* renamed from: break, reason: not valid java name */
    public static TextView f1004break;

    /* renamed from: case, reason: not valid java name */
    public static TextView f1005case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public static CardView f1006case;

    /* renamed from: catch, reason: not valid java name */
    public static TextView f1007catch;

    /* renamed from: class, reason: not valid java name */
    public static TextView f1008class;

    /* renamed from: const, reason: not valid java name */
    public static TextView f1009const;

    /* renamed from: do, reason: not valid java name */
    public static ImageView f1010do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static LinearLayout f1011do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static TextView f1012do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static CardView f1013do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static ProgressWheelv2 f1014do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static C2839gx f1015do;

    /* renamed from: else, reason: not valid java name */
    public static TextView f1016else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public static CardView f1017else;

    /* renamed from: final, reason: not valid java name */
    public static TextView f1018final;

    /* renamed from: for, reason: not valid java name */
    public static ImageView f1019for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static LinearLayout f1020for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static TextView f1021for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static CardView f1022for;

    /* renamed from: goto, reason: not valid java name */
    public static TextView f1023goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public static CardView f1024goto;

    /* renamed from: if, reason: not valid java name */
    public static ImageView f1025if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static LinearLayout f1026if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static TextView f1027if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static CardView f1028if;

    /* renamed from: import, reason: not valid java name */
    public static TextView f1029import;

    /* renamed from: native, reason: not valid java name */
    public static TextView f1030native;

    /* renamed from: new, reason: not valid java name */
    public static ImageView f1031new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static LinearLayout f1032new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static TextView f1033new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static CardView f1034new;

    /* renamed from: public, reason: not valid java name */
    public static TextView f1035public;

    /* renamed from: return, reason: not valid java name */
    public static TextView f1036return;

    /* renamed from: static, reason: not valid java name */
    public static TextView f1037static;

    /* renamed from: super, reason: not valid java name */
    public static TextView f1038super;

    /* renamed from: this, reason: not valid java name */
    public static TextView f1039this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public static CardView f1040this;

    /* renamed from: throw, reason: not valid java name */
    public static TextView f1041throw;

    /* renamed from: try, reason: not valid java name */
    public static ImageView f1042try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public static TextView f1043try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public static CardView f1044try;

    /* renamed from: while, reason: not valid java name */
    public static TextView f1045while;

    /* renamed from: do, reason: not valid java name */
    public static void m607do(int i, boolean z) {
        if (MainActivity.f12316case && MainActivity.f12317catch) {
            if (!z) {
                if (i == 1) {
                    if (C0420Ou.f2680do != null) {
                        if (VJ.m2583static() >= 21) {
                            f1025if.setActivated(z);
                        } else {
                            f1025if.setImageDrawable(C0466Ra.getDrawable(C0420Ou.f2680do.getApplicationContext(), R.drawable.btn_action_expand));
                        }
                        f1023goto.setText(C0420Ou.f2680do.getResources().getString(R.string.navigationShowDetails));
                    }
                    f1011do.startAnimation(new Z6(f1011do, 1));
                    return;
                }
                if (i == 2) {
                    if (C0420Ou.f2680do != null) {
                        if (VJ.m2583static() >= 21) {
                            f1019for.setActivated(z);
                        } else {
                            f1019for.setImageDrawable(C0466Ra.getDrawable(C0420Ou.f2680do.getApplicationContext(), R.drawable.btn_action_expand));
                        }
                        f1007catch.setText(C0420Ou.f2680do.getResources().getString(R.string.navigationShowDetails));
                    }
                    f1026if.startAnimation(new Z6(f1026if, 1));
                    return;
                }
                if (i == 3) {
                    if (C0420Ou.f2680do != null) {
                        if (VJ.m2583static() >= 21) {
                            f1031new.setActivated(z);
                        } else {
                            f1031new.setImageDrawable(C0466Ra.getDrawable(C0420Ou.f2680do.getApplicationContext(), R.drawable.btn_action_expand));
                        }
                        f1018final.setText(C0420Ou.f2680do.getResources().getString(R.string.navigationShowDetails));
                    }
                    f1020for.startAnimation(new Z6(f1020for, 1));
                    return;
                }
                if (i == 5) {
                    if (C0420Ou.f2680do != null) {
                        if (VJ.m2583static() >= 21) {
                            f1042try.setActivated(z);
                        } else {
                            f1042try.setImageDrawable(C0466Ra.getDrawable(C0420Ou.f2680do.getApplicationContext(), R.drawable.btn_action_expand));
                        }
                        f1030native.setText(C0420Ou.f2680do.getResources().getString(R.string.navigationShowDetails));
                    }
                    f1032new.startAnimation(new Z6(f1032new, 1));
                    return;
                }
                return;
            }
            if (i == 1) {
                if (C0420Ou.f2680do != null) {
                    if (VJ.m2583static() >= 21) {
                        f1025if.setActivated(z);
                    } else {
                        f1025if.setImageDrawable(C0466Ra.getDrawable(C0420Ou.f2680do.getApplicationContext(), R.drawable.btn_action_collapse));
                    }
                    f1023goto.setText(C0420Ou.f2680do.getResources().getString(R.string.navigationHideDetails));
                }
                f1011do.startAnimation(new Z6(f1011do, 0));
                return;
            }
            if (i == 2) {
                if (C0420Ou.f2680do != null) {
                    if (VJ.m2583static() >= 21) {
                        f1019for.setActivated(z);
                    } else {
                        f1019for.setImageDrawable(C0466Ra.getDrawable(C0420Ou.f2680do.getApplicationContext(), R.drawable.btn_action_collapse));
                    }
                    f1007catch.setText(C0420Ou.f2680do.getResources().getString(R.string.navigationHideDetails));
                }
                f1026if.startAnimation(new Z6(f1026if, 0));
                return;
            }
            if (i == 3) {
                if (C0420Ou.f2680do != null) {
                    if (VJ.m2583static() >= 21) {
                        f1031new.setActivated(z);
                    } else {
                        f1031new.setImageDrawable(C0466Ra.getDrawable(C0420Ou.f2680do.getApplicationContext(), R.drawable.btn_action_collapse));
                    }
                    f1018final.setText(C0420Ou.f2680do.getResources().getString(R.string.navigationHideDetails));
                }
                f1020for.startAnimation(new Z6(f1020for, 0));
                return;
            }
            if (i == 5) {
                if (C0420Ou.f2680do != null) {
                    if (VJ.m2583static() >= 21) {
                        f1042try.setActivated(z);
                    } else {
                        f1042try.setImageDrawable(C0466Ra.getDrawable(C0420Ou.f2680do.getApplicationContext(), R.drawable.btn_action_collapse));
                    }
                    f1030native.setText(C0420Ou.f2680do.getResources().getString(R.string.navigationHideDetails));
                }
                f1032new.startAnimation(new Z6(f1032new, 0));
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m608if(boolean z, Activity activity) {
        TextView textView;
        try {
            if (!z) {
                CardView cardView = f1013do;
                if (cardView != null) {
                    cardView.setClickable(true);
                }
                TextView textView2 = f1021for;
                if (textView2 != null) {
                    textView2.setVisibility(0);
                }
                if (f1012do == null || activity == null || (textView = f1027if) == null) {
                    return;
                }
                textView.setVisibility(0);
                return;
            }
            CardView cardView2 = f1013do;
            if (cardView2 != null) {
                cardView2.setClickable(false);
            }
            TextView textView3 = f1021for;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            if (f1012do != null && activity != null && activity.getResources() != null) {
                Trace trace = VJ.f4080do;
                int color = C3772tx.m8345static() ? activity.getResources().getColor(R.color.textColorSecondary) : activity.getResources().getColor(R.color.textColorSecondaryInverse);
                if (color != -1) {
                    f1012do.setTextColor(color);
                }
                if (AsyncTaskC3561qK.f15096if == 1) {
                    TextView textView4 = f1012do;
                    StringBuilder sb = new StringBuilder();
                    sb.append(activity.getResources().getString(R.string.progressCardMsg_2ndAttempt));
                    sb.append(" ");
                    sb.append(activity.getResources().getString(R.string.progressCardMsg, (28 - AsyncTaskC3561qK.f15095for) + AsyncTaskC3561qK.m7872break(28 - AsyncTaskC3561qK.f15095for)));
                    textView4.setText(sb.toString());
                } else {
                    f1012do.setText(activity.getResources().getString(R.string.progressCardMsg, (16 - AsyncTaskC3561qK.f15095for) + AsyncTaskC3561qK.m7872break(16 - AsyncTaskC3561qK.f15095for)));
                }
                f1012do.setVisibility(0);
                TextView textView5 = f1027if;
                if (textView5 != null) {
                    textView5.setVisibility(8);
                }
            }
            if (f1010do == null || activity.getResources() == null) {
                return;
            }
            f1010do.setImageDrawable(activity.getResources().getDrawable(R.drawable.root_status_gray));
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }
}
