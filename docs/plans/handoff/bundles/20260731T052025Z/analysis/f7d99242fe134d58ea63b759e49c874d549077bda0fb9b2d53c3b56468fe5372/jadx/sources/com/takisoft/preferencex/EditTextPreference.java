package com.takisoft.preferencex;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.collection.SparseArrayCompat;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class EditTextPreference extends androidx.preference.EditTextPreference {
    public final boolean disableMessagePaddingFix;
    public final SparseArrayCompat editTextAttributes;

    public EditTextPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedValue typedValue;
        TypedValue typedValue2;
        this.editTextAttributes = new SparseArrayCompat(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.EditTextPreference, i, i2);
        this.disableMessagePaddingFix = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        if (attributeSet != null) {
            int attributeCount = attributeSet.getAttributeCount();
            for (int i3 = 0; i3 < attributeCount; i3++) {
                int attributeNameResource = attributeSet.getAttributeNameResource(i3);
                int attributeResourceValue = attributeSet.getAttributeResourceValue(i3, 0);
                switch (attributeNameResource) {
                    case R.attr.maxLines:
                    case R.attr.lines:
                    case R.attr.minLines:
                    case R.attr.maxEms:
                    case R.attr.ems:
                    case R.attr.minEms:
                        typedValue = new TypedValue();
                        typedValue.resourceId = attributeResourceValue;
                        typedValue.data = attributeSet.getAttributeIntValue(i3, -1);
                        typedValue.type = 16;
                        typedValue2 = typedValue;
                        break;
                    case R.attr.inputType:
                        typedValue = new TypedValue();
                        typedValue.resourceId = attributeResourceValue;
                        typedValue.data = attributeSet.getAttributeIntValue(i3, 1);
                        typedValue.type = 17;
                        typedValue2 = typedValue;
                        break;
                    case R.attr.textAllCaps:
                        typedValue = new TypedValue();
                        typedValue.resourceId = attributeResourceValue;
                        typedValue.data = attributeSet.getAttributeBooleanValue(i3, false) ? 1 : 0;
                        typedValue.type = 18;
                        typedValue2 = typedValue;
                        break;
                    default:
                        typedValue2 = null;
                        break;
                }
                if (typedValue2 != null) {
                    this.editTextAttributes.put(attributeNameResource, typedValue2);
                }
            }
        }
        this.mOnBindEditTextListener = new ConnectionPool(22, this);
    }

    @Override // androidx.preference.EditTextPreference
    public final void setText(String str) {
        String str2 = this.mText;
        super.setText(str);
        if (TextUtils.equals(str, str2)) {
            return;
        }
        notifyChanged();
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.fsck.k9.R.attr.editTextPreferenceStyle, 0);
    }
}
