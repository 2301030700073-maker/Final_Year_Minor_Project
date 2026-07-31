package com.takisoft.preferencex;

import android.content.res.TypedArray;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.preference.PreferenceViewHolder;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class PreferenceCategory extends androidx.preference.PreferenceCategory {
    public static final int[] CATEGORY_ATTRS = {R.attr.colorAccent};
    public final int color;
    public View itemView;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PreferenceCategory(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            r0 = 2130969793(0x7f0404c1, float:1.7548278E38)
            r1 = 16842892(0x101008c, float:2.369395E-38)
            int r0 = androidx.core.content.res.CamUtils.getAttr(r4, r0, r1)
            r1 = 0
            r3.<init>(r4, r5, r0, r1)
            int[] r2 = com.takisoft.preferencex.R$styleable.PreferenceCategory
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r2, r0, r1)
            int r5 = r4.getColor(r1, r1)
            r3.color = r5
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.takisoft.preferencex.PreferenceCategory.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public static void setTitleVisibility(View view, boolean z) {
        RecyclerView.LayoutParams layoutParams;
        if (view == null) {
            return;
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
        boolean z2 = view.getTag() != null && ((ViewGroup.MarginLayoutParams) layoutParams2).width == 0;
        if (view.getTag() == null) {
            layoutParams = new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams2);
            view.setTag(layoutParams);
        } else {
            layoutParams = (RecyclerView.LayoutParams) view.getTag();
        }
        if (z) {
            if (view.getVisibility() == 8 || z2) {
                ((ViewGroup.MarginLayoutParams) layoutParams2).width = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                ((ViewGroup.MarginLayoutParams) layoutParams2).height = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                view.setVisibility(0);
                return;
            }
            return;
        }
        if (view.getVisibility() == 0 || !z2) {
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams2).height = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = 0;
            view.setVisibility(8);
        }
    }

    @Override // androidx.preference.PreferenceCategory, androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        View view = preferenceViewHolder.itemView;
        this.itemView = view;
        TextView textView = (TextView) preferenceViewHolder.findViewById(android.R.id.title);
        if (textView != null) {
            TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(CATEGORY_ATTRS);
            if (obtainStyledAttributes.length() > 0 && obtainStyledAttributes.getIndexCount() > 0) {
                int color = obtainStyledAttributes.getColor(obtainStyledAttributes.getIndex(0), 16728193);
                int i = this.color;
                if (i != 0) {
                    color = i;
                }
                textView.setTextColor(color);
            }
            obtainStyledAttributes.recycle();
        }
        setTitleVisibility(view, !TextUtils.isEmpty(this.mTitle));
    }

    @Override // androidx.preference.Preference
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        setTitleVisibility(this.itemView, !TextUtils.isEmpty(this.mTitle));
    }
}
