package b.b.c;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: b.b.c.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0014m {

    /* renamed from: a, reason: collision with root package name */
    public final C0010i f310a;

    /* renamed from: b, reason: collision with root package name */
    public final int f311b;

    public C0014m(Context context) {
        int f = DialogInterfaceC0015n.f(context, 0);
        this.f310a = new C0010i(new ContextThemeWrapper(context, DialogInterfaceC0015n.f(context, f)));
        this.f311b = f;
    }

    public DialogInterfaceC0015n a() {
        ListAdapter listAdapter;
        DialogInterfaceC0015n dialogInterfaceC0015n = new DialogInterfaceC0015n(this.f310a.f301a, this.f311b);
        C0010i c0010i = this.f310a;
        C0013l c0013l = dialogInterfaceC0015n.f312c;
        View view = c0010i.g;
        if (view != null) {
            c0013l.G = view;
        } else {
            CharSequence charSequence = c0010i.f;
            if (charSequence != null) {
                c0013l.e = charSequence;
                TextView textView = c0013l.E;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = c0010i.f304d;
            if (drawable != null) {
                c0013l.C = drawable;
                c0013l.B = 0;
                ImageView imageView = c0013l.D;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    c0013l.D.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = c0010i.h;
        if (charSequence2 != null) {
            c0013l.f = charSequence2;
            TextView textView2 = c0013l.F;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = c0010i.i;
        if (charSequence3 != null) {
            c0013l.e(-1, charSequence3, c0010i.j, null, null);
        }
        CharSequence charSequence4 = c0010i.k;
        if (charSequence4 != null) {
            c0013l.e(-2, charSequence4, c0010i.l, null, null);
        }
        if (c0010i.q != null || c0010i.r != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) c0010i.f302b.inflate(c0013l.L, (ViewGroup) null);
            if (c0010i.x) {
                listAdapter = new C0007f(c0010i, c0010i.f301a, c0013l.M, R.id.text1, c0010i.q, alertController$RecycleListView);
            } else {
                int i = c0010i.y ? c0013l.N : c0013l.O;
                listAdapter = c0010i.r;
                if (listAdapter == null) {
                    listAdapter = new C0012k(c0010i.f301a, i, R.id.text1, c0010i.q);
                }
            }
            c0013l.H = listAdapter;
            c0013l.I = c0010i.z;
            if (c0010i.s != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0008g(c0010i, c0013l));
            } else if (c0010i.A != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0009h(c0010i, alertController$RecycleListView, c0013l));
            }
            if (c0010i.y) {
                alertController$RecycleListView.setChoiceMode(1);
            } else if (c0010i.x) {
                alertController$RecycleListView.setChoiceMode(2);
            }
            c0013l.g = alertController$RecycleListView;
        }
        View view2 = c0010i.u;
        if (view2 != null) {
            c0013l.h = view2;
            c0013l.i = 0;
            c0013l.n = false;
        }
        boolean z = this.f310a.m;
        dialogInterfaceC0015n.setCancelable(true);
        boolean z2 = this.f310a.m;
        dialogInterfaceC0015n.setCanceledOnTouchOutside(true);
        DialogInterface.OnCancelListener onCancelListener = this.f310a.n;
        dialogInterfaceC0015n.setOnCancelListener(null);
        DialogInterface.OnDismissListener onDismissListener = this.f310a.o;
        dialogInterfaceC0015n.setOnDismissListener(null);
        DialogInterface.OnKeyListener onKeyListener = this.f310a.p;
        if (onKeyListener != null) {
            dialogInterfaceC0015n.setOnKeyListener(onKeyListener);
        }
        return dialogInterfaceC0015n;
    }
}
