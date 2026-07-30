package androidx.appcompat.widget;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.Cdo;
import com.google.android.gms.common.api.Api;
import defpackage.AbstractViewOnTouchListenerC3935wj;
import defpackage.C3645ro;
import defpackage.H;
import defpackage.O4;
import defpackage.QK;
import defpackage.UD;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: do, reason: not valid java name */
    public H f5648do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Drawable f5649do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f5650do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FrameLayout f5651do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ImageView f5652do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f5653do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5654do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Celse f5655do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f5656do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ListPopupWindow f5657do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5658do;

    /* renamed from: for, reason: not valid java name */
    public final int f5659for;

    /* renamed from: if, reason: not valid java name */
    public final FrameLayout f5660if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ImageView f5661if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5662if;

    /* renamed from: new, reason: not valid java name */
    public final int f5663new;

    /* renamed from: try, reason: not valid java name */
    public int f5664try;

    public static class InnerLayout extends LinearLayout {

        /* renamed from: do, reason: not valid java name */
        public static final int[] f5665do = {R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int resourceId;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f5665do);
            setBackgroundDrawable((!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? obtainStyledAttributes.getDrawable(0) : C3645ro.m7997extends(context, resourceId));
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$case, reason: invalid class name */
    public class Ccase extends BaseAdapter {

        /* renamed from: do, reason: not valid java name */
        public int f5666do = 4;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public androidx.appcompat.widget.Cdo f5668do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f5669do;

        /* renamed from: for, reason: not valid java name */
        public boolean f5670for;

        /* renamed from: if, reason: not valid java name */
        public boolean f5671if;

        public Ccase() {
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            int m3511case = this.f5668do.m3511case();
            if (!this.f5669do && this.f5668do.m3513else() != null) {
                m3511case--;
            }
            int min = Math.min(m3511case, this.f5666do);
            return this.f5670for ? min + 1 : min;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    return null;
                }
                throw new IllegalArgumentException();
            }
            if (!this.f5669do && this.f5668do.m3513else() != null) {
                i++;
            }
            return this.f5668do.m3518try(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            return (this.f5670for && i == getCount() - 1) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i);
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                if (view != null && view.getId() == 1) {
                    return view;
                }
                View inflate = LayoutInflater.from(activityChooserView.getContext()).inflate(com.joeykrim.rootcheck.R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                inflate.setId(1);
                ((TextView) inflate.findViewById(com.joeykrim.rootcheck.R.id.title)).setText(activityChooserView.getContext().getString(com.joeykrim.rootcheck.R.string.abc_activity_chooser_view_see_all));
                return inflate;
            }
            if (view == null || view.getId() != com.joeykrim.rootcheck.R.id.list_item) {
                view = LayoutInflater.from(activityChooserView.getContext()).inflate(com.joeykrim.rootcheck.R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            PackageManager packageManager = activityChooserView.getContext().getPackageManager();
            ImageView imageView = (ImageView) view.findViewById(com.joeykrim.rootcheck.R.id.icon);
            ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
            imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
            ((TextView) view.findViewById(com.joeykrim.rootcheck.R.id.title)).setText(resolveInfo.loadLabel(packageManager));
            if (this.f5669do && i == 0 && this.f5671if) {
                view.setActivated(true);
            } else {
                view.setActivated(false);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return 3;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$do, reason: invalid class name */
    public class Cdo extends DataSetObserver {
        public Cdo() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            super.onChanged();
            ActivityChooserView.this.f5653do.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.f5653do.notifyDataSetInvalidated();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$else, reason: invalid class name */
    public class Celse implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        public Celse() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            int i = 0;
            if (view != activityChooserView.f5660if) {
                if (view != activityChooserView.f5651do) {
                    throw new IllegalArgumentException();
                }
                activityChooserView.f5658do = false;
                activityChooserView.m3405new(activityChooserView.f5663new);
                return;
            }
            activityChooserView.m3402do();
            ResolveInfo m3513else = ActivityChooserView.this.f5653do.f5668do.m3513else();
            androidx.appcompat.widget.Cdo cdo = ActivityChooserView.this.f5653do.f5668do;
            synchronized (cdo.f5976do) {
                cdo.m3514for();
                ArrayList arrayList = cdo.f5978do;
                int size = arrayList.size();
                while (true) {
                    if (i >= size) {
                        i = -1;
                        break;
                    } else if (((Cdo.C0029do) arrayList.get(i)).f5985do == m3513else) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
            Intent m3516if = ActivityChooserView.this.f5653do.f5668do.m3516if(i);
            if (m3516if != null) {
                m3516if.addFlags(524288);
                ActivityChooserView.this.getContext().startActivity(m3516if);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            activityChooserView.getClass();
            H h = activityChooserView.f5648do;
            if (h != null) {
                h.subUiVisibilityChanged(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((Ccase) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView.this.m3405new(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                return;
            }
            ActivityChooserView.this.m3402do();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (!activityChooserView.f5658do) {
                Ccase ccase = activityChooserView.f5653do;
                if (!ccase.f5669do) {
                    i++;
                }
                Intent m3516if = ccase.f5668do.m3516if(i);
                if (m3516if != null) {
                    m3516if.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(m3516if);
                    return;
                }
                return;
            }
            if (i > 0) {
                androidx.appcompat.widget.Cdo cdo = activityChooserView.f5653do.f5668do;
                synchronized (cdo.f5976do) {
                    cdo.m3514for();
                    Cdo.C0029do c0029do = (Cdo.C0029do) cdo.f5978do.get(i);
                    Cdo.C0029do c0029do2 = (Cdo.C0029do) cdo.f5978do.get(0);
                    float f = c0029do2 != null ? (c0029do2.f5984do - c0029do.f5984do) + 5.0f : 1.0f;
                    ActivityInfo activityInfo = c0029do.f5985do.activityInfo;
                    cdo.m3512do(new Cdo.Cfor(new ComponentName(activityInfo.packageName, activityInfo.name), System.currentTimeMillis(), f));
                }
            }
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view != activityChooserView.f5660if) {
                throw new IllegalArgumentException();
            }
            if (activityChooserView.f5653do.getCount() > 0) {
                activityChooserView.f5658do = true;
                activityChooserView.m3405new(activityChooserView.f5663new);
            }
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$for, reason: invalid class name */
    public class Cfor extends View.AccessibilityDelegate {
        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setCanOpenPopup(true);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$if, reason: invalid class name */
    public class Cif implements ViewTreeObserver.OnGlobalLayoutListener {
        public Cif() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (activityChooserView.m3403for()) {
                if (!activityChooserView.isShown()) {
                    activityChooserView.m3404if().dismiss();
                    return;
                }
                activityChooserView.m3404if().mo2368if();
                H h = activityChooserView.f5648do;
                if (h != null) {
                    h.subUiVisibilityChanged(true);
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$new, reason: invalid class name */
    public class Cnew extends AbstractViewOnTouchListenerC3935wj {
        public Cnew(FrameLayout frameLayout) {
            super(frameLayout);
        }

        @Override // defpackage.AbstractViewOnTouchListenerC3935wj
        /* renamed from: for */
        public final boolean mo3311for() {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (activityChooserView.m3403for() || !activityChooserView.f5662if) {
                return true;
            }
            activityChooserView.f5658do = false;
            activityChooserView.m3405new(activityChooserView.f5663new);
            return true;
        }

        @Override // defpackage.AbstractViewOnTouchListenerC3935wj
        /* renamed from: if */
        public final UD mo3312if() {
            return ActivityChooserView.this.m3404if();
        }

        @Override // defpackage.AbstractViewOnTouchListenerC3935wj
        /* renamed from: new */
        public final boolean mo3395new() {
            ActivityChooserView.this.m3402do();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$try, reason: invalid class name */
    public class Ctry extends DataSetObserver {
        public Ctry() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            int size;
            super.onChanged();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (activityChooserView.f5653do.getCount() > 0) {
                activityChooserView.f5651do.setEnabled(true);
            } else {
                activityChooserView.f5651do.setEnabled(false);
            }
            int m3511case = activityChooserView.f5653do.f5668do.m3511case();
            androidx.appcompat.widget.Cdo cdo = activityChooserView.f5653do.f5668do;
            synchronized (cdo.f5976do) {
                cdo.m3514for();
                size = cdo.f5981if.size();
            }
            if (m3511case == 1 || (m3511case > 1 && size > 0)) {
                activityChooserView.f5660if.setVisibility(0);
                ResolveInfo m3513else = activityChooserView.f5653do.f5668do.m3513else();
                PackageManager packageManager = activityChooserView.getContext().getPackageManager();
                activityChooserView.f5661if.setImageDrawable(m3513else.loadIcon(packageManager));
                if (activityChooserView.f5664try != 0) {
                    activityChooserView.f5660if.setContentDescription(activityChooserView.getContext().getString(activityChooserView.f5664try, m3513else.loadLabel(packageManager)));
                }
            } else {
                activityChooserView.f5660if.setVisibility(8);
            }
            if (activityChooserView.f5660if.getVisibility() == 0) {
                activityChooserView.f5650do.setBackgroundDrawable(activityChooserView.f5649do);
            } else {
                activityChooserView.f5650do.setBackgroundDrawable(null);
            }
        }
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3402do() {
        if (m3403for()) {
            m3404if().dismiss();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.f5656do);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m3403for() {
        return m3404if().mo2367do();
    }

    /* renamed from: if, reason: not valid java name */
    public final ListPopupWindow m3404if() {
        if (this.f5657do == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f5657do = listPopupWindow;
            listPopupWindow.mo3415new(this.f5653do);
            ListPopupWindow listPopupWindow2 = this.f5657do;
            listPopupWindow2.f5785do = this;
            listPopupWindow2.f5804new = true;
            listPopupWindow2.f5789do.setFocusable(true);
            ListPopupWindow listPopupWindow3 = this.f5657do;
            Celse celse = this.f5655do;
            listPopupWindow3.f5786do = celse;
            listPopupWindow3.f5789do.setOnDismissListener(celse);
        }
        return this.f5657do;
    }

    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [boolean, int] */
    /* renamed from: new, reason: not valid java name */
    public final void m3405new(int i) {
        Ccase ccase = this.f5653do;
        if (ccase.f5668do == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.f5656do);
        ?? r1 = this.f5660if.getVisibility() == 0 ? 1 : 0;
        int m3511case = ccase.f5668do.m3511case();
        if (i == Integer.MAX_VALUE || m3511case <= i + r1) {
            if (ccase.f5670for) {
                ccase.f5670for = false;
                ccase.notifyDataSetChanged();
            }
            if (ccase.f5666do != i) {
                ccase.f5666do = i;
                ccase.notifyDataSetChanged();
            }
        } else {
            if (!ccase.f5670for) {
                ccase.f5670for = true;
                ccase.notifyDataSetChanged();
            }
            int i2 = i - 1;
            if (ccase.f5666do != i2) {
                ccase.f5666do = i2;
                ccase.notifyDataSetChanged();
            }
        }
        ListPopupWindow m3404if = m3404if();
        if (m3404if.mo2367do()) {
            return;
        }
        if (this.f5658do || r1 == 0) {
            if (!ccase.f5669do || ccase.f5671if != r1) {
                ccase.f5669do = true;
                ccase.f5671if = r1;
                ccase.notifyDataSetChanged();
            }
        } else if (ccase.f5669do || ccase.f5671if) {
            ccase.f5669do = false;
            ccase.f5671if = false;
            ccase.notifyDataSetChanged();
        }
        int i3 = ccase.f5666do;
        ccase.f5666do = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = ccase.getCount();
        View view = null;
        int i4 = 0;
        for (int i5 = 0; i5 < count; i5++) {
            view = ccase.getView(i5, view, null);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i4 = Math.max(i4, view.getMeasuredWidth());
        }
        ccase.f5666do = i3;
        m3404if.m3449import(Math.min(i4, this.f5659for));
        m3404if.mo2368if();
        H h = this.f5648do;
        if (h != null) {
            h.subUiVisibilityChanged(true);
        }
        m3404if.f5795do.setContentDescription(getContext().getString(com.joeykrim.rootcheck.R.string.abc_activitychooserview_choose_application));
        m3404if.f5795do.setSelector(new ColorDrawable(0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        androidx.appcompat.widget.Cdo cdo = this.f5653do.f5668do;
        if (cdo != null) {
            cdo.registerObserver(this.f5654do);
        }
        this.f5662if = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        androidx.appcompat.widget.Cdo cdo = this.f5653do.f5668do;
        if (cdo != null) {
            cdo.unregisterObserver(this.f5654do);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f5656do);
        }
        if (m3403for()) {
            m3402do();
        }
        this.f5662if = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f5650do.layout(0, 0, i3 - i, i4 - i2);
        if (m3403for()) {
            return;
        }
        m3402do();
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.f5660if.getVisibility() != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        View view = this.f5650do;
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5654do = new Cdo();
        this.f5656do = new Cif();
        this.f5663new = 4;
        int[] iArr = O4.f2527catch;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        QK.m1857import(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        this.f5663new = obtainStyledAttributes.getInt(1, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(com.joeykrim.rootcheck.R.layout.abc_activity_chooser_view, (ViewGroup) this, true);
        Celse celse = new Celse();
        this.f5655do = celse;
        View findViewById = findViewById(com.joeykrim.rootcheck.R.id.activity_chooser_view_content);
        this.f5650do = findViewById;
        this.f5649do = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(com.joeykrim.rootcheck.R.id.default_activity_button);
        this.f5660if = frameLayout;
        frameLayout.setOnClickListener(celse);
        frameLayout.setOnLongClickListener(celse);
        this.f5661if = (ImageView) frameLayout.findViewById(com.joeykrim.rootcheck.R.id.image);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(com.joeykrim.rootcheck.R.id.expand_activities_button);
        frameLayout2.setOnClickListener(celse);
        frameLayout2.setAccessibilityDelegate(new Cfor());
        frameLayout2.setOnTouchListener(new Cnew(frameLayout2));
        this.f5651do = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(com.joeykrim.rootcheck.R.id.image);
        this.f5652do = imageView;
        imageView.setImageDrawable(drawable);
        Ccase ccase = new Ccase();
        this.f5653do = ccase;
        ccase.registerDataSetObserver(new Ctry());
        Resources resources = context.getResources();
        this.f5659for = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.abc_config_prefDialogWidth));
    }
}
