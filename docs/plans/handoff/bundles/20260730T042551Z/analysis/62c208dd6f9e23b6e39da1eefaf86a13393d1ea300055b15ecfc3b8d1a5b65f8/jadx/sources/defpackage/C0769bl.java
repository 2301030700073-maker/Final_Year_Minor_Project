package defpackage;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;

@SuppressLint({"ViewConstructor"})
/* renamed from: bl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0769bl extends FrameLayout {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f8444for = 0;

    /* renamed from: do, reason: not valid java name */
    public final ViewGroup f8445do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f8446do;

    /* renamed from: bl$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static float m4858do(View view) {
            return view.getZ();
        }
    }

    public C0769bl(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.f8445do = viewGroup;
        viewGroup.setTag(R.id.ghost_view_holder, this);
        viewGroup.getOverlay().add(this);
        this.f8446do = true;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4857do(View view, ArrayList<View> arrayList) {
        Object parent = view.getParent();
        if (parent instanceof ViewGroup) {
            m4857do((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        if (!this.f8446do) {
            throw new IllegalStateException("This GhostViewHolder is detached!");
        }
        super.onViewAdded(view);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            ViewGroup viewGroup = this.f8445do;
            viewGroup.setTag(R.id.ghost_view_holder, null);
            viewGroup.getOverlay().remove(this);
            this.f8446do = false;
        }
    }
}
