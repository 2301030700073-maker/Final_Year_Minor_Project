package com.fsck.k9.ui.messageview;

import android.content.Context;
import android.text.SpannedString;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.google.android.material.textview.MaterialTextView;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import okhttp3.ConnectionPool;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RecipientNamesView extends ViewGroup {
    public final int additionRecipientSpacing;
    public final int maxNumberOfRecipientNames;
    public int numberOfRecipients;
    public final MaterialTextView recipientCountTextView;
    public final RawField recipientLayoutCreator;
    public final MaterialTextView recipientNameTextView;
    public List recipientNames;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecipientNamesView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.maxNumberOfRecipientNames = 5;
        LayoutInflater.from(context).inflate(R.layout.recipient_names, (ViewGroup) this, true);
        View findViewById = findViewById(R.id.recipient_names);
        findViewById.getClass();
        this.recipientNameTextView = (MaterialTextView) findViewById;
        View findViewById2 = findViewById(R.id.recipient_count);
        findViewById2.getClass();
        MaterialTextView materialTextView = (MaterialTextView) findViewById2;
        this.recipientCountTextView = materialTextView;
        ViewGroup.LayoutParams layoutParams = materialTextView.getLayoutParams();
        layoutParams.getClass();
        int marginStart = ((ViewGroup.MarginLayoutParams) layoutParams).getMarginStart();
        this.additionRecipientSpacing = marginStart;
        this.recipientNames = EmptyList.INSTANCE;
        ConnectionPool connectionPool = new ConnectionPool(10, this);
        String string = context.getString(R.string.message_view_recipients_format);
        string.getClass();
        String string2 = context.getString(R.string.message_view_additional_recipient_prefix);
        string2.getClass();
        this.recipientLayoutCreator = new RawField(connectionPool, string, marginStart, string2);
        isInEditMode();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(0, 0);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public final int getMaxNumberOfRecipientNames() {
        return this.maxNumberOfRecipientNames;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        RecipientLayoutData recipientLayoutData;
        if (this.numberOfRecipients == 0) {
            return;
        }
        int width = getWidth();
        List list = this.recipientNames;
        int i5 = this.numberOfRecipients;
        RawField rawField = this.recipientLayoutCreator;
        String str = (String) rawField.name;
        list.getClass();
        if (list.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
            return;
        }
        if (list.size() == 1) {
            recipientLayoutData = new RecipientLayoutData(rawField.createRecipientList(list), null);
        } else {
            StringBuilder sb = new StringBuilder(str.concat("10"));
            int size = list.size();
            if (size > 5) {
                size = 5;
            }
            while (1 < size) {
                SpannedString createRecipientList = rawField.createRecipientList(CollectionsKt.take(list, size));
                sb.setLength(0);
                int i6 = i5 - size;
                if (i6 > 0) {
                    sb.append(str);
                    sb.append(i6);
                }
                RecipientNamesView recipientNamesView = (RecipientNamesView) ((ConnectionPool) rawField.raw).delegate;
                createRecipientList.getClass();
                MaterialTextView materialTextView = recipientNamesView.recipientNameTextView;
                materialTextView.setText(createRecipientList);
                materialTextView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(recipientNamesView.getHeight(), Integer.MIN_VALUE));
                int measuredWidth = materialTextView.getMeasuredWidth();
                if (measuredWidth <= width) {
                    if (sb.length() != 0) {
                        int i7 = measuredWidth + rawField.delimiterIdx;
                        MaterialTextView materialTextView2 = recipientNamesView.recipientCountTextView;
                        materialTextView2.setText(sb);
                        materialTextView2.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(recipientNamesView.getHeight(), Integer.MIN_VALUE));
                        if (materialTextView2.getMeasuredWidth() + i7 <= width) {
                        }
                    }
                    recipientLayoutData = new RecipientLayoutData(createRecipientList, sb.length() == 0 ? null : sb.toString());
                }
                size--;
            }
            recipientLayoutData = new RecipientLayoutData(rawField.createRecipientList(CollectionsKt.take(list, 1)), str + (i5 - 1));
        }
        CharSequence charSequence = recipientLayoutData.recipientList;
        MaterialTextView materialTextView3 = this.recipientNameTextView;
        materialTextView3.setText(charSequence);
        int i8 = this.additionRecipientSpacing;
        MaterialTextView materialTextView4 = this.recipientCountTextView;
        String str2 = recipientLayoutData.additionalRecipients;
        if (str2 != null) {
            materialTextView4.setVisibility(0);
            materialTextView4.setText(str2);
            materialTextView4.measure(View.MeasureSpec.makeMeasureSpec(width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
            width = (width - i8) - materialTextView4.getMeasuredWidth();
        } else {
            materialTextView4.setVisibility(8);
        }
        materialTextView3.measure(View.MeasureSpec.makeMeasureSpec(width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
        if (getLayoutDirection() == 0) {
            int measuredWidth2 = materialTextView3.getMeasuredWidth();
            materialTextView3.layout(0, 0, measuredWidth2, materialTextView3.getMeasuredHeight());
            int i9 = measuredWidth2 + i8;
            materialTextView4.layout(i9, 0, materialTextView4.getMeasuredWidth() + i9, materialTextView4.getMeasuredHeight());
            return;
        }
        int width2 = getWidth() - materialTextView3.getMeasuredWidth();
        materialTextView3.layout(width2, 0, i3, materialTextView3.getMeasuredHeight());
        int i10 = width2 - i8;
        materialTextView4.layout(i10 - materialTextView4.getMeasuredWidth(), 0, i10, materialTextView4.getMeasuredHeight());
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) == 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Width of RecipientNamesView needs to be constrained");
            return;
        }
        MaterialTextView materialTextView = this.recipientNameTextView;
        materialTextView.measure(i, i2);
        MaterialTextView materialTextView2 = this.recipientCountTextView;
        materialTextView2.measure(i, i2);
        setMeasuredDimension(View.MeasureSpec.getSize(i), Math.max(materialTextView.getMeasuredHeight(), materialTextView2.getMeasuredHeight()));
    }

    public final void setTextSize(int i) {
        float f = i;
        this.recipientNameTextView.setTextSize(2, f);
        this.recipientCountTextView.setTextSize(2, f);
    }
}
