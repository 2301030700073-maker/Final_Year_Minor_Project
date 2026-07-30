package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.O2;

/* loaded from: classes.dex */
public class Constraints extends ViewGroup {

    /* renamed from: do, reason: not valid java name */
    public Cdo f6326do;

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.LayoutParams(layoutParams);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }

    public static class LayoutParams extends ConstraintLayout.LayoutParams {

        /* renamed from: catch, reason: not valid java name */
        public final float f6327catch;

        /* renamed from: class, reason: not valid java name */
        public final float f6328class;

        /* renamed from: const, reason: not valid java name */
        public final float f6329const;

        /* renamed from: final, reason: not valid java name */
        public final float f6330final;

        /* renamed from: import, reason: not valid java name */
        public final float f6331import;

        /* renamed from: native, reason: not valid java name */
        public final float f6332native;

        /* renamed from: public, reason: not valid java name */
        public final float f6333public;

        /* renamed from: return, reason: not valid java name */
        public final float f6334return;

        /* renamed from: static, reason: not valid java name */
        public final float f6335static;

        /* renamed from: super, reason: not valid java name */
        public final float f6336super;

        /* renamed from: this, reason: not valid java name */
        public final boolean f6337this;

        /* renamed from: throw, reason: not valid java name */
        public final float f6338throw;

        /* renamed from: while, reason: not valid java name */
        public final float f6339while;

        public LayoutParams() {
            this.f6327catch = 1.0f;
            this.f6337this = false;
            this.f6328class = 0.0f;
            this.f6329const = 0.0f;
            this.f6330final = 0.0f;
            this.f6336super = 0.0f;
            this.f6338throw = 1.0f;
            this.f6339while = 1.0f;
            this.f6331import = 0.0f;
            this.f6332native = 0.0f;
            this.f6333public = 0.0f;
            this.f6334return = 0.0f;
            this.f6335static = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6327catch = 1.0f;
            this.f6337this = false;
            this.f6328class = 0.0f;
            this.f6329const = 0.0f;
            this.f6330final = 0.0f;
            this.f6336super = 0.0f;
            this.f6338throw = 1.0f;
            this.f6339while = 1.0f;
            this.f6331import = 0.0f;
            this.f6332native = 0.0f;
            this.f6333public = 0.0f;
            this.f6334return = 0.0f;
            this.f6335static = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.z);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 15) {
                    this.f6327catch = obtainStyledAttributes.getFloat(index, this.f6327catch);
                } else if (index == 28) {
                    this.f6328class = obtainStyledAttributes.getFloat(index, this.f6328class);
                    this.f6337this = true;
                } else if (index == 23) {
                    this.f6330final = obtainStyledAttributes.getFloat(index, this.f6330final);
                } else if (index == 24) {
                    this.f6336super = obtainStyledAttributes.getFloat(index, this.f6336super);
                } else if (index == 22) {
                    this.f6329const = obtainStyledAttributes.getFloat(index, this.f6329const);
                } else if (index == 20) {
                    this.f6338throw = obtainStyledAttributes.getFloat(index, this.f6338throw);
                } else if (index == 21) {
                    this.f6339while = obtainStyledAttributes.getFloat(index, this.f6339while);
                } else if (index == 16) {
                    this.f6331import = obtainStyledAttributes.getFloat(index, this.f6331import);
                } else if (index == 17) {
                    this.f6332native = obtainStyledAttributes.getFloat(index, this.f6332native);
                } else if (index == 18) {
                    this.f6333public = obtainStyledAttributes.getFloat(index, this.f6333public);
                } else if (index == 19) {
                    this.f6334return = obtainStyledAttributes.getFloat(index, this.f6334return);
                } else if (index == 27) {
                    this.f6335static = obtainStyledAttributes.getFloat(index, this.f6335static);
                }
            }
        }
    }
}
