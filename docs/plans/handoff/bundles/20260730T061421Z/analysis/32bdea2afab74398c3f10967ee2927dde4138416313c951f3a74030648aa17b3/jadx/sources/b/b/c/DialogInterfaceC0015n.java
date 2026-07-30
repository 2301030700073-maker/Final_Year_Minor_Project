package b.b.c;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import b.b.g.C0069q0;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.Objects;

/* renamed from: b.b.c.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceC0015n extends L implements DialogInterface {

    /* renamed from: c, reason: collision with root package name */
    public final C0013l f312c;

    public DialogInterfaceC0015n(Context context, int i) {
        super(context, f(context, i));
        this.f312c = new C0013l(getContext(), this, getWindow());
    }

    public static int f(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // b.b.c.L, android.app.Dialog
    public void onCreate(Bundle bundle) {
        int i;
        View view;
        ListAdapter listAdapter;
        View findViewById;
        super.onCreate(bundle);
        C0013l c0013l = this.f312c;
        c0013l.f307b.setContentView(c0013l.K == 0 ? c0013l.J : c0013l.J);
        View findViewById2 = c0013l.f308c.findViewById(R.id.parentPanel);
        View findViewById3 = findViewById2.findViewById(R.id.topPanel);
        View findViewById4 = findViewById2.findViewById(R.id.contentPanel);
        View findViewById5 = findViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(R.id.customPanel);
        View view2 = c0013l.h;
        if (view2 == null) {
            view2 = c0013l.i != 0 ? LayoutInflater.from(c0013l.f306a).inflate(c0013l.i, viewGroup, false) : null;
        }
        boolean z = view2 != null;
        if (!z || !C0013l.a(view2)) {
            c0013l.f308c.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) c0013l.f308c.findViewById(R.id.custom);
            frameLayout.addView(view2, new ViewGroup.LayoutParams(-1, -1));
            if (c0013l.n) {
                frameLayout.setPadding(c0013l.j, c0013l.k, c0013l.l, c0013l.m);
            }
            if (c0013l.g != null) {
                ((C0069q0) viewGroup.getLayoutParams()).f571a = RecentsState.NO_OFFSET;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById6 = viewGroup.findViewById(R.id.topPanel);
        View findViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup d2 = c0013l.d(findViewById6, findViewById3);
        ViewGroup d3 = c0013l.d(findViewById7, findViewById4);
        ViewGroup d4 = c0013l.d(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) c0013l.f308c.findViewById(R.id.scrollView);
        c0013l.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        c0013l.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) d3.findViewById(android.R.id.message);
        c0013l.F = textView;
        if (textView != null) {
            CharSequence charSequence = c0013l.f;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                c0013l.A.removeView(c0013l.F);
                if (c0013l.g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) c0013l.A.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(c0013l.A);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(c0013l.g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    d3.setVisibility(8);
                }
            }
        }
        Button button = (Button) d4.findViewById(android.R.id.button1);
        c0013l.o = button;
        button.setOnClickListener(c0013l.S);
        if (TextUtils.isEmpty(c0013l.p) && c0013l.r == null) {
            c0013l.o.setVisibility(8);
            i = 0;
        } else {
            c0013l.o.setText(c0013l.p);
            Drawable drawable = c0013l.r;
            if (drawable != null) {
                int i2 = c0013l.f309d;
                drawable.setBounds(0, 0, i2, i2);
                c0013l.o.setCompoundDrawables(c0013l.r, null, null, null);
            }
            c0013l.o.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) d4.findViewById(android.R.id.button2);
        c0013l.s = button2;
        button2.setOnClickListener(c0013l.S);
        if (TextUtils.isEmpty(c0013l.t) && c0013l.v == null) {
            c0013l.s.setVisibility(8);
        } else {
            c0013l.s.setText(c0013l.t);
            Drawable drawable2 = c0013l.v;
            if (drawable2 != null) {
                int i3 = c0013l.f309d;
                drawable2.setBounds(0, 0, i3, i3);
                c0013l.s.setCompoundDrawables(c0013l.v, null, null, null);
            }
            c0013l.s.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) d4.findViewById(android.R.id.button3);
        c0013l.w = button3;
        button3.setOnClickListener(c0013l.S);
        if (TextUtils.isEmpty(c0013l.x) && c0013l.z == null) {
            c0013l.w.setVisibility(8);
            view = null;
        } else {
            c0013l.w.setText(c0013l.x);
            Drawable drawable3 = c0013l.z;
            if (drawable3 != null) {
                int i4 = c0013l.f309d;
                drawable3.setBounds(0, 0, i4, i4);
                view = null;
                c0013l.w.setCompoundDrawables(c0013l.z, null, null, null);
            } else {
                view = null;
            }
            c0013l.w.setVisibility(0);
            i |= 4;
        }
        Context context = c0013l.f306a;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i == 1) {
                c0013l.b(c0013l.o);
            } else if (i == 2) {
                c0013l.b(c0013l.s);
            } else if (i == 4) {
                c0013l.b(c0013l.w);
            }
        }
        if (!(i != 0)) {
            d4.setVisibility(8);
        }
        if (c0013l.G != null) {
            d2.addView(c0013l.G, 0, new ViewGroup.LayoutParams(-1, -2));
            c0013l.f308c.findViewById(R.id.title_template).setVisibility(8);
        } else {
            c0013l.D = (ImageView) c0013l.f308c.findViewById(android.R.id.icon);
            if ((!TextUtils.isEmpty(c0013l.e)) && c0013l.P) {
                TextView textView2 = (TextView) c0013l.f308c.findViewById(R.id.alertTitle);
                c0013l.E = textView2;
                textView2.setText(c0013l.e);
                int i5 = c0013l.B;
                if (i5 != 0) {
                    c0013l.D.setImageResource(i5);
                } else {
                    Drawable drawable4 = c0013l.C;
                    if (drawable4 != null) {
                        c0013l.D.setImageDrawable(drawable4);
                    } else {
                        c0013l.E.setPadding(c0013l.D.getPaddingLeft(), c0013l.D.getPaddingTop(), c0013l.D.getPaddingRight(), c0013l.D.getPaddingBottom());
                        c0013l.D.setVisibility(8);
                    }
                }
            } else {
                c0013l.f308c.findViewById(R.id.title_template).setVisibility(8);
                c0013l.D.setVisibility(8);
                d2.setVisibility(8);
            }
        }
        boolean z2 = viewGroup.getVisibility() != 8;
        int i6 = (d2 == null || d2.getVisibility() == 8) ? 0 : 1;
        boolean z3 = d4.getVisibility() != 8;
        if (!z3 && (findViewById = d3.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById.setVisibility(0);
        }
        if (i6 != 0) {
            NestedScrollView nestedScrollView2 = c0013l.A;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View findViewById9 = (c0013l.f == null && c0013l.g == null) ? view : d2.findViewById(R.id.titleDividerNoCustom);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        } else {
            View findViewById10 = d3.findViewById(R.id.textSpacerNoTitle);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        }
        ListView listView = c0013l.g;
        if (listView instanceof AlertController$RecycleListView) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) listView;
            Objects.requireNonNull(alertController$RecycleListView);
            if (!z3 || i6 == 0) {
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i6 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f25a, alertController$RecycleListView.getPaddingRight(), z3 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.f26b);
            }
        }
        if (!z2) {
            View view3 = c0013l.g;
            if (view3 == null) {
                view3 = c0013l.A;
            }
            if (view3 != null) {
                int i7 = z3 ? 2 : 0;
                View findViewById11 = c0013l.f308c.findViewById(R.id.scrollIndicatorUp);
                View findViewById12 = c0013l.f308c.findViewById(R.id.scrollIndicatorDown);
                b.e.i.q.I(view3, i6 | i7, 3);
                if (findViewById11 != null) {
                    d3.removeView(findViewById11);
                }
                if (findViewById12 != null) {
                    d3.removeView(findViewById12);
                }
            }
        }
        ListView listView2 = c0013l.g;
        if (listView2 == null || (listAdapter = c0013l.H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i8 = c0013l.I;
        if (i8 > -1) {
            listView2.setItemChecked(i8, true);
            listView2.setSelection(i8);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f312c.A;
        if (nestedScrollView != null && nestedScrollView.i(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f312c.A;
        if (nestedScrollView != null && nestedScrollView.i(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // b.b.c.L, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        C0013l c0013l = this.f312c;
        c0013l.e = charSequence;
        TextView textView = c0013l.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
