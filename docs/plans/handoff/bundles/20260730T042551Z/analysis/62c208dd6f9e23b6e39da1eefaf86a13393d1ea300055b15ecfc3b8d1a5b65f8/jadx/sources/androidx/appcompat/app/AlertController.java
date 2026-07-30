package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import defpackage.J1;
import defpackage.O4;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class AlertController {

    /* renamed from: case, reason: not valid java name */
    public final int f5169case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final J1 f5171do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f5172do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f5173do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f5174do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Window f5175do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Button f5176do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ImageView f5177do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ListAdapter f5178do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextView f5179do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RecycleListView f5180do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f5182do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public NestedScrollView f5183do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f5184do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f5185do;

    /* renamed from: for, reason: not valid java name */
    public final int f5186for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public Button f5187for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Button f5189if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public TextView f5190if;

    /* renamed from: new, reason: not valid java name */
    public final int f5191new;

    /* renamed from: try, reason: not valid java name */
    public final int f5192try;

    /* renamed from: do, reason: not valid java name */
    public int f5170do = 0;

    /* renamed from: if, reason: not valid java name */
    public int f5188if = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5181do = new Cdo();

    public static class RecycleListView extends ListView {

        /* renamed from: for, reason: not valid java name */
        public final int f5193for;

        /* renamed from: new, reason: not valid java name */
        public final int f5194new;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O4.f2564package);
            this.f5194new = obtainStyledAttributes.getDimensionPixelOffset(0, -1);
            this.f5193for = obtainStyledAttributes.getDimensionPixelOffset(1, -1);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AlertController alertController = AlertController.this;
            Button button = alertController.f5176do;
            Button button2 = alertController.f5189if;
            Button button3 = alertController.f5187for;
            alertController.f5182do.obtainMessage(1, alertController.f5171do).sendToTarget();
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$for, reason: invalid class name */
    public static final class Cfor extends Handler {

        /* renamed from: do, reason: not valid java name */
        public final WeakReference<DialogInterface> f5196do;

        public Cfor(DialogInterface dialogInterface) {
            this.f5196do = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f5196do.get(), message.what);
            } else {
                if (i != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public int f5197do = -1;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Context f5198do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public DialogInterface.OnClickListener f5199do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public DialogInterface.OnKeyListener f5200do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Drawable f5201do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final LayoutInflater f5202do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public View f5203do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ListAdapter f5204do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public CharSequence f5205do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f5206do;

        public Cif(ContextThemeWrapper contextThemeWrapper) {
            this.f5198do = contextThemeWrapper;
            this.f5202do = (LayoutInflater) contextThemeWrapper.getSystemService("layout_inflater");
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$new, reason: invalid class name */
    public static class Cnew extends ArrayAdapter<CharSequence> {
        public Cnew(Context context, int i) {
            super(context, i, R.id.text1, (Object[]) null);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, J1 j1, Window window) {
        this.f5172do = context;
        this.f5171do = j1;
        this.f5175do = window;
        this.f5182do = new Cfor(j1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, O4.f2528class, com.joeykrim.rootcheck.R.attr.alertDialogStyle, 0);
        this.f5186for = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.getResourceId(2, 0);
        this.f5191new = obtainStyledAttributes.getResourceId(4, 0);
        obtainStyledAttributes.getResourceId(5, 0);
        this.f5192try = obtainStyledAttributes.getResourceId(7, 0);
        this.f5169case = obtainStyledAttributes.getResourceId(3, 0);
        this.f5185do = obtainStyledAttributes.getBoolean(6, true);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        j1.m998case().mo3256public(1);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3226do(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: for, reason: not valid java name */
    public static ViewGroup m3227for(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m3228if(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }
}
