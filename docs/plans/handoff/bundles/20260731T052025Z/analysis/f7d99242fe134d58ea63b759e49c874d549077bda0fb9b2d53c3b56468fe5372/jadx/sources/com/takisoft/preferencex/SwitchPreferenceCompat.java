package com.takisoft.preferencex;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.preference.PreferenceViewHolder;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends androidx.preference.SwitchPreferenceCompat {
    public static final int[] ATTRS = {R.attr.controlBackground, R.attr.colorControlNormal};
    public final AnonymousClass1 contentClickListener;
    public final AnonymousClass1 widgetClickListener;
    public final boolean withSeparator;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.takisoft.preferencex.SwitchPreferenceCompat$1] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.takisoft.preferencex.SwitchPreferenceCompat$1] */
    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        final Object[] objArr = 0 == true ? 1 : 0;
        this.contentClickListener = new View.OnClickListener(this) { // from class: com.takisoft.preferencex.SwitchPreferenceCompat.1
            public final /* synthetic */ SwitchPreferenceCompat this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = objArr;
                SwitchPreferenceCompat switchPreferenceCompat = this.this$0;
                switch (i) {
                    case 0:
                        switchPreferenceCompat.performClick((View) view.getParent());
                        break;
                    default:
                        boolean z = !switchPreferenceCompat.mChecked;
                        switchPreferenceCompat.callChangeListener(Boolean.valueOf(z));
                        switchPreferenceCompat.setChecked(z);
                        break;
                }
            }
        };
        final int i = 1;
        this.widgetClickListener = new View.OnClickListener(this) { // from class: com.takisoft.preferencex.SwitchPreferenceCompat.1
            public final /* synthetic */ SwitchPreferenceCompat this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2 = i;
                SwitchPreferenceCompat switchPreferenceCompat = this.this$0;
                switch (i2) {
                    case 0:
                        switchPreferenceCompat.performClick((View) view.getParent());
                        break;
                    default:
                        boolean z = !switchPreferenceCompat.mChecked;
                        switchPreferenceCompat.callChangeListener(Boolean.valueOf(z));
                        switchPreferenceCompat.setChecked(z);
                        break;
                }
            }
        };
        this.withSeparator = false;
        boolean z = this.mFragment != null;
        if (z) {
            this.withSeparator = z;
            if (z) {
                this.mLayoutResId = R.layout.preference_material_ext;
            } else {
                this.mLayoutResId = R.layout.preference_material;
            }
        }
    }

    @Override // androidx.preference.SwitchPreferenceCompat, androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        View view = preferenceViewHolder.itemView;
        boolean z = this.withSeparator;
        if (z) {
            preferenceViewHolder.findViewById(android.R.id.widget_frame).setOnClickListener(this.widgetClickListener);
            preferenceViewHolder.findViewById(R.id.pref_content_frame).setOnClickListener(this.contentClickListener);
            int[] iArr = ATTRS;
            Context context = this.mContext;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
            if (obtainStyledAttributes.length() > 0 && obtainStyledAttributes.getIndexCount() > 0) {
                int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                if (resourceId != 0) {
                    preferenceViewHolder.findViewById(R.id.switchWidget).setBackgroundDrawable(Utf8.SafeProcessor.getDrawable(context, resourceId));
                }
                ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(1);
                if (colorStateList != null) {
                    preferenceViewHolder.findViewById(R.id.pref_separator).setBackgroundColor(colorStateList.getColorForState(isEnabled() ? new int[]{android.R.attr.state_enabled} : new int[]{-16842910}, colorStateList.getDefaultColor()));
                }
            }
            obtainStyledAttributes.recycle();
        }
        view.setClickable(!z);
        view.setFocusable(!z);
    }

    @Override // androidx.preference.TwoStatePreference, androidx.preference.Preference
    public final void onClick() {
        if (this.withSeparator) {
            return;
        }
        super.onClick();
    }
}
