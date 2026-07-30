package com.android.contacts.editor;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.EditText;
import com.android.contacts.R;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.ValuesDelta;
import com.android.contacts.model.dataitem.DataItem;
import com.android.contacts.model.dataitem.DataKind;
import com.android.contacts.model.dataitem.StructuredNameDataItem;

/* loaded from: classes.dex */
public class StructuredNameEditorView extends TextFieldsEditorView {
    private boolean mChanged;
    private TextFieldsEditorView mPhoneticView;
    private StructuredNameDataItem mSnapshot;

    public StructuredNameEditorView(Context context) {
        super(context);
    }

    public StructuredNameEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public StructuredNameEditorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.android.contacts.editor.TextFieldsEditorView, com.android.contacts.editor.LabeledEditorView, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        Resources resources = getResources();
        this.mCollapseButtonDescription = resources.getString(R.string.collapse_name_fields_description);
        this.mExpandButtonDescription = resources.getString(R.string.expand_name_fields_description);
    }

    @Override // com.android.contacts.editor.TextFieldsEditorView, com.android.contacts.editor.LabeledEditorView, com.android.contacts.editor.Editor
    public void setValues(DataKind dataKind, ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        super.setValues(dataKind, valuesDelta, rawContactDelta, z, viewIdGenerator);
        if (this.mSnapshot == null) {
            this.mSnapshot = (StructuredNameDataItem) DataItem.createFrom(new ContentValues(getValues().getCompleteValues()));
            this.mChanged = valuesDelta.isInsert();
        } else {
            this.mChanged = false;
        }
        updateEmptiness();
        this.mDeleteContainer.setVisibility(8);
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    public void onFieldChanged(String str, String str2) {
        if (isFieldChanged(str, str2)) {
            saveValue(str, str2);
            this.mChanged = true;
            notifyEditorListener();
        }
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    public void updatePhonetic(String str, String str2) {
        EditText editText;
        TextFieldsEditorView textFieldsEditorView = this.mPhoneticView;
        if (textFieldsEditorView != null) {
            ViewGroup viewGroup = (ViewGroup) textFieldsEditorView.findViewById(R.id.editors);
            if ("data3".equals(str)) {
                editText = (EditText) viewGroup.getChildAt(0);
            } else if ("data2".equals(str)) {
                editText = (EditText) viewGroup.getChildAt(2);
            } else {
                editText = "data5".equals(str) ? (EditText) viewGroup.getChildAt(1) : null;
            }
            if (editText != null) {
                editText.setText(str2);
            }
        }
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    public String getPhonetic(String str) {
        EditText editText;
        TextFieldsEditorView textFieldsEditorView = this.mPhoneticView;
        if (textFieldsEditorView != null) {
            ViewGroup viewGroup = (ViewGroup) textFieldsEditorView.findViewById(R.id.editors);
            if ("data3".equals(str)) {
                editText = (EditText) viewGroup.getChildAt(0);
            } else if ("data2".equals(str)) {
                editText = (EditText) viewGroup.getChildAt(2);
            } else {
                editText = "data5".equals(str) ? (EditText) viewGroup.getChildAt(1) : null;
            }
            if (editText != null) {
                return editText.getText().toString();
            }
        }
        return "";
    }

    public void setPhoneticView(TextFieldsEditorView textFieldsEditorView) {
        this.mPhoneticView = textFieldsEditorView;
    }

    @Override // com.android.contacts.editor.TextFieldsEditorView, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mChanged = this.mChanged;
        savedState.mSnapshot = this.mSnapshot.getContentValues();
        return savedState;
    }

    @Override // com.android.contacts.editor.TextFieldsEditorView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.mSuperState);
        this.mChanged = savedState.mChanged;
        this.mSnapshot = (StructuredNameDataItem) DataItem.createFrom(savedState.mSnapshot);
    }

    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.contacts.editor.StructuredNameEditorView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public boolean mChanged;
        public ContentValues mSnapshot;
        public Parcelable mSuperState;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        SavedState(Parcelable parcelable) {
            this.mSuperState = parcelable;
        }

        private SavedState(Parcel parcel) {
            ClassLoader classLoader = SavedState.class.getClassLoader();
            this.mSuperState = parcel.readParcelable(classLoader);
            this.mChanged = parcel.readInt() != 0;
            this.mSnapshot = (ContentValues) parcel.readParcelable(classLoader);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.mSuperState, 0);
            parcel.writeInt(this.mChanged ? 1 : 0);
            parcel.writeParcelable(this.mSnapshot, 0);
        }
    }
}
