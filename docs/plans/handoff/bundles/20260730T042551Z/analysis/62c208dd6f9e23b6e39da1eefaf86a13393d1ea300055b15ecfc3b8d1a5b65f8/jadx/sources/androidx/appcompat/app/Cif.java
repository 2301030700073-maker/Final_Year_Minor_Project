package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.core.widget.NestedScrollView;
import com.joeykrim.rootcheck.R;
import defpackage.C3385nL;
import defpackage.C3835v0;
import defpackage.J1;
import defpackage.QK;
import defpackage.RunnableC3894w0;
import java.util.WeakHashMap;

/* renamed from: androidx.appcompat.app.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif extends J1 implements DialogInterface {

    /* renamed from: do, reason: not valid java name */
    public final AlertController f5348do;

    /* renamed from: androidx.appcompat.app.if$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f5349do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final AlertController.Cif f5350do;

        public Cdo(Context context) {
            int m3298this = Cif.m3298this(context, 0);
            this.f5350do = new AlertController.Cif(new ContextThemeWrapper(context, Cif.m3298this(context, m3298this)));
            this.f5349do = m3298this;
        }

        /* renamed from: do, reason: not valid java name */
        public final Cif m3299do() {
            AlertController.Cif cif = this.f5350do;
            Cif cif2 = new Cif(cif.f5198do, this.f5349do);
            View view = cif.f5203do;
            AlertController alertController = cif2.f5348do;
            if (view != null) {
                alertController.f5174do = view;
            } else {
                CharSequence charSequence = cif.f5205do;
                if (charSequence != null) {
                    alertController.f5184do = charSequence;
                    TextView textView = alertController.f5179do;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                Drawable drawable = cif.f5201do;
                if (drawable != null) {
                    alertController.f5173do = drawable;
                    alertController.f5170do = 0;
                    ImageView imageView = alertController.f5177do;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.f5177do.setImageDrawable(drawable);
                    }
                }
            }
            if (cif.f5204do != null) {
                AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) cif.f5202do.inflate(alertController.f5191new, (ViewGroup) null);
                int i = cif.f5206do ? alertController.f5192try : alertController.f5169case;
                ListAdapter listAdapter = cif.f5204do;
                if (listAdapter == null) {
                    listAdapter = new AlertController.Cnew(cif.f5198do, i);
                }
                alertController.f5178do = listAdapter;
                alertController.f5188if = cif.f5197do;
                if (cif.f5199do != null) {
                    recycleListView.setOnItemClickListener(new androidx.appcompat.app.Cdo(cif, alertController));
                }
                if (cif.f5206do) {
                    recycleListView.setChoiceMode(1);
                }
                alertController.f5180do = recycleListView;
            }
            cif2.setCancelable(true);
            cif2.setCanceledOnTouchOutside(true);
            cif2.setOnCancelListener(null);
            cif2.setOnDismissListener(null);
            DialogInterface.OnKeyListener onKeyListener = cif.f5200do;
            if (onKeyListener != null) {
                cif2.setOnKeyListener(onKeyListener);
            }
            return cif2;
        }
    }

    public Cif(Context context, int i) {
        super(context, m3298this(context, i));
        this.f5348do = new AlertController(getContext(), this, getWindow());
    }

    /* renamed from: this, reason: not valid java name */
    public static int m3298this(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // defpackage.J1, defpackage.DialogC3196k9, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i;
        ListAdapter listAdapter;
        View view;
        View findViewById;
        super.onCreate(bundle);
        AlertController alertController = this.f5348do;
        alertController.f5171do.setContentView(alertController.f5186for);
        Window window = alertController.f5175do;
        View findViewById2 = window.findViewById(R.id.parentPanel);
        View findViewById3 = findViewById2.findViewById(R.id.topPanel);
        View findViewById4 = findViewById2.findViewById(R.id.contentPanel);
        View findViewById5 = findViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(R.id.customPanel);
        window.setFlags(131072, 131072);
        viewGroup.setVisibility(8);
        View findViewById6 = viewGroup.findViewById(R.id.topPanel);
        View findViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup m3227for = AlertController.m3227for(findViewById6, findViewById3);
        ViewGroup m3227for2 = AlertController.m3227for(findViewById7, findViewById4);
        ViewGroup m3227for3 = AlertController.m3227for(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        alertController.f5183do = nestedScrollView;
        nestedScrollView.setFocusable(false);
        alertController.f5183do.setNestedScrollingEnabled(false);
        TextView textView = (TextView) m3227for2.findViewById(android.R.id.message);
        alertController.f5190if = textView;
        if (textView != null) {
            textView.setVisibility(8);
            alertController.f5183do.removeView(alertController.f5190if);
            if (alertController.f5180do != null) {
                ViewGroup viewGroup2 = (ViewGroup) alertController.f5183do.getParent();
                int indexOfChild = viewGroup2.indexOfChild(alertController.f5183do);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(alertController.f5180do, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
            } else {
                m3227for2.setVisibility(8);
            }
        }
        Button button = (Button) m3227for3.findViewById(android.R.id.button1);
        alertController.f5176do = button;
        AlertController.Cdo cdo = alertController.f5181do;
        button.setOnClickListener(cdo);
        if (TextUtils.isEmpty(null)) {
            alertController.f5176do.setVisibility(8);
            i = 0;
        } else {
            alertController.f5176do.setText((CharSequence) null);
            alertController.f5176do.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) m3227for3.findViewById(android.R.id.button2);
        alertController.f5189if = button2;
        button2.setOnClickListener(cdo);
        if (TextUtils.isEmpty(null)) {
            alertController.f5189if.setVisibility(8);
        } else {
            alertController.f5189if.setText((CharSequence) null);
            alertController.f5189if.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) m3227for3.findViewById(android.R.id.button3);
        alertController.f5187for = button3;
        button3.setOnClickListener(cdo);
        if (TextUtils.isEmpty(null)) {
            alertController.f5187for.setVisibility(8);
        } else {
            alertController.f5187for.setText((CharSequence) null);
            alertController.f5187for.setVisibility(0);
            i |= 4;
        }
        TypedValue typedValue = new TypedValue();
        alertController.f5172do.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i == 1) {
                AlertController.m3226do(alertController.f5176do);
            } else if (i == 2) {
                AlertController.m3226do(alertController.f5189if);
            } else if (i == 4) {
                AlertController.m3226do(alertController.f5187for);
            }
        }
        if (!(i != 0)) {
            m3227for3.setVisibility(8);
        }
        if (alertController.f5174do != null) {
            m3227for.addView(alertController.f5174do, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            alertController.f5177do = (ImageView) window.findViewById(android.R.id.icon);
            if ((!TextUtils.isEmpty(alertController.f5184do)) && alertController.f5185do) {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                alertController.f5179do = textView2;
                textView2.setText(alertController.f5184do);
                int i2 = alertController.f5170do;
                if (i2 != 0) {
                    alertController.f5177do.setImageResource(i2);
                } else {
                    Drawable drawable = alertController.f5173do;
                    if (drawable != null) {
                        alertController.f5177do.setImageDrawable(drawable);
                    } else {
                        alertController.f5179do.setPadding(alertController.f5177do.getPaddingLeft(), alertController.f5177do.getPaddingTop(), alertController.f5177do.getPaddingRight(), alertController.f5177do.getPaddingBottom());
                        alertController.f5177do.setVisibility(8);
                    }
                }
            } else {
                window.findViewById(R.id.title_template).setVisibility(8);
                alertController.f5177do.setVisibility(8);
                m3227for.setVisibility(8);
            }
        }
        boolean z = viewGroup.getVisibility() != 8;
        int i3 = (m3227for == null || m3227for.getVisibility() == 8) ? 0 : 1;
        boolean z2 = m3227for3.getVisibility() != 8;
        if (!z2 && (findViewById = m3227for2.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById.setVisibility(0);
        }
        if (i3 != 0) {
            NestedScrollView nestedScrollView2 = alertController.f5183do;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View findViewById9 = alertController.f5180do != null ? m3227for.findViewById(R.id.titleDividerNoCustom) : null;
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        } else {
            View findViewById10 = m3227for2.findViewById(R.id.textSpacerNoTitle);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        }
        AlertController.RecycleListView recycleListView = alertController.f5180do;
        if (recycleListView instanceof AlertController.RecycleListView) {
            recycleListView.getClass();
            if (!z2 || i3 == 0) {
                recycleListView.setPadding(recycleListView.getPaddingLeft(), i3 != 0 ? recycleListView.getPaddingTop() : recycleListView.f5193for, recycleListView.getPaddingRight(), z2 ? recycleListView.getPaddingBottom() : recycleListView.f5194new);
            }
        }
        if (!z) {
            View view2 = alertController.f5180do;
            if (view2 == null) {
                view2 = alertController.f5183do;
            }
            if (view2 != null) {
                int i4 = i3 | (z2 ? 2 : 0);
                View findViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View findViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                int i5 = Build.VERSION.SDK_INT;
                if (i5 >= 23) {
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    if (i5 >= 23) {
                        QK.Ctry.m1953new(view2, i4, 3);
                    }
                    if (findViewById11 != null) {
                        m3227for2.removeView(findViewById11);
                    }
                    if (findViewById12 != null) {
                        m3227for2.removeView(findViewById12);
                    }
                } else {
                    if (findViewById11 != null && (i4 & 1) == 0) {
                        m3227for2.removeView(findViewById11);
                        findViewById11 = null;
                    }
                    if (findViewById12 == null || (i4 & 2) != 0) {
                        view = findViewById12;
                    } else {
                        m3227for2.removeView(findViewById12);
                        view = null;
                    }
                    if (findViewById11 != null || view != null) {
                        AlertController.RecycleListView recycleListView2 = alertController.f5180do;
                        if (recycleListView2 != null) {
                            recycleListView2.setOnScrollListener(new C3835v0(findViewById11, view));
                            alertController.f5180do.post(new RunnableC3894w0(alertController, findViewById11, view));
                        } else {
                            if (findViewById11 != null) {
                                m3227for2.removeView(findViewById11);
                            }
                            if (view != null) {
                                m3227for2.removeView(view);
                            }
                        }
                    }
                }
            }
        }
        AlertController.RecycleListView recycleListView3 = alertController.f5180do;
        if (recycleListView3 == null || (listAdapter = alertController.f5178do) == null) {
            return;
        }
        recycleListView3.setAdapter(listAdapter);
        int i6 = alertController.f5188if;
        if (i6 > -1) {
            recycleListView3.setItemChecked(i6, true);
            recycleListView3.setSelection(i6);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f5348do.f5183do;
        if (nestedScrollView != null && nestedScrollView.m3746for(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f5348do.f5183do;
        if (nestedScrollView != null && nestedScrollView.m3746for(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // defpackage.J1, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        AlertController alertController = this.f5348do;
        alertController.f5184do = charSequence;
        TextView textView = alertController.f5179do;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
