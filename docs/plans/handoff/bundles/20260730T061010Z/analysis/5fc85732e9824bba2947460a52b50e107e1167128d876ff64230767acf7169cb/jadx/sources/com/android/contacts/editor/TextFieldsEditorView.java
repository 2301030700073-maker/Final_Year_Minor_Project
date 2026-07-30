package com.android.contacts.editor;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.TtsSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.contacts.ContactsUtils;
import com.android.contacts.R;
import com.android.contacts.compat.PhoneNumberUtilsCompat;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.ValuesDelta;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.dataitem.DataKind;
import com.android.contacts.util.PhoneNumberFormatter;
import java.util.List;

/* loaded from: classes.dex */
public class TextFieldsEditorView extends LabeledEditorView {
    protected String mCollapseButtonDescription;
    protected String mCollapsedAnnouncement;
    protected String mExpandButtonDescription;
    protected String mExpandedAnnouncement;
    protected ImageView mExpansionView;
    protected View mExpansionViewContainer;
    private EditText[] mFieldEditTexts;
    private ViewGroup mFields;
    private String mFixedDisplayName;
    private String mFixedPhonetic;
    private boolean mHideOptional;
    private int mHintTextColorUnfocused;
    private int mMinFieldHeight;
    private int mPreviousViewHeight;
    private View.OnFocusChangeListener mTextFocusChangeListener;
    private boolean needInputInitialize;

    public TextFieldsEditorView(Context context) {
        super(context);
        this.mFieldEditTexts = null;
        this.mFields = null;
        this.mHideOptional = true;
        this.mFixedPhonetic = "";
        this.mFixedDisplayName = "";
        this.mTextFocusChangeListener = new View.OnFocusChangeListener() { // from class: com.android.contacts.editor.TextFieldsEditorView.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (TextFieldsEditorView.this.getEditorListener() != null) {
                    TextFieldsEditorView.this.getEditorListener().onRequest(6);
                }
                TextFieldsEditorView.this.rebuildLabel();
                if (z) {
                    TextFieldsEditorView.this.needInputInitialize = true;
                }
            }
        };
    }

    public TextFieldsEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFieldEditTexts = null;
        this.mFields = null;
        this.mHideOptional = true;
        this.mFixedPhonetic = "";
        this.mFixedDisplayName = "";
        this.mTextFocusChangeListener = new View.OnFocusChangeListener() { // from class: com.android.contacts.editor.TextFieldsEditorView.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (TextFieldsEditorView.this.getEditorListener() != null) {
                    TextFieldsEditorView.this.getEditorListener().onRequest(6);
                }
                TextFieldsEditorView.this.rebuildLabel();
                if (z) {
                    TextFieldsEditorView.this.needInputInitialize = true;
                }
            }
        };
    }

    public TextFieldsEditorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFieldEditTexts = null;
        this.mFields = null;
        this.mHideOptional = true;
        this.mFixedPhonetic = "";
        this.mFixedDisplayName = "";
        this.mTextFocusChangeListener = new View.OnFocusChangeListener() { // from class: com.android.contacts.editor.TextFieldsEditorView.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (TextFieldsEditorView.this.getEditorListener() != null) {
                    TextFieldsEditorView.this.getEditorListener().onRequest(6);
                }
                TextFieldsEditorView.this.rebuildLabel();
                if (z) {
                    TextFieldsEditorView.this.needInputInitialize = true;
                }
            }
        };
    }

    @Override // com.android.contacts.editor.LabeledEditorView, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setDrawingCacheEnabled(true);
        setAlwaysDrawnWithCacheEnabled(true);
        this.mMinFieldHeight = getContext().getResources().getDimensionPixelSize(R.dimen.editor_min_line_item_height);
        this.mFields = (ViewGroup) findViewById(R.id.editors);
        this.mHintTextColorUnfocused = getResources().getColor(R.color.editor_disabled_text_color);
        this.mExpansionView = (ImageView) findViewById(R.id.expansion_view);
        this.mCollapseButtonDescription = getResources().getString(R.string.collapse_fields_description);
        this.mCollapsedAnnouncement = getResources().getString(R.string.announce_collapsed_fields);
        this.mExpandButtonDescription = getResources().getString(R.string.expand_fields_description);
        this.mExpandedAnnouncement = getResources().getString(R.string.announce_expanded_fields);
        View findViewById = findViewById(R.id.expansion_view_container);
        this.mExpansionViewContainer = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.TextFieldsEditorView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TextFieldsEditorView textFieldsEditorView = TextFieldsEditorView.this;
                    textFieldsEditorView.mPreviousViewHeight = textFieldsEditorView.mFields.getHeight();
                    View findFocus = TextFieldsEditorView.this.findFocus();
                    int id = findFocus == null ? -1 : findFocus.getId();
                    TextFieldsEditorView.this.mHideOptional = !r0.mHideOptional;
                    TextFieldsEditorView.this.onOptionalFieldVisibilityChange();
                    TextFieldsEditorView.this.rebuildValues();
                    View findViewById2 = TextFieldsEditorView.this.findViewById(id);
                    if (findViewById2 == null || findViewById2.getVisibility() == 8) {
                        findViewById2 = TextFieldsEditorView.this;
                    }
                    findViewById2.requestFocus();
                    EditorAnimator.getInstance().slideAndFadeIn(TextFieldsEditorView.this.mFields, TextFieldsEditorView.this.mPreviousViewHeight);
                    TextFieldsEditorView textFieldsEditorView2 = TextFieldsEditorView.this;
                    textFieldsEditorView2.announceForAccessibility(textFieldsEditorView2.mHideOptional ? TextFieldsEditorView.this.mCollapsedAnnouncement : TextFieldsEditorView.this.mExpandedAnnouncement);
                }
            });
        }
    }

    @Override // com.android.contacts.editor.LabeledEditorView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.mFieldEditTexts != null) {
            int i = 0;
            while (true) {
                EditText[] editTextArr = this.mFieldEditTexts;
                if (i >= editTextArr.length) {
                    break;
                }
                editTextArr[i].setEnabled(!isReadOnly() && z);
                i++;
            }
        }
        ImageView imageView = this.mExpansionView;
        if (imageView != null) {
            imageView.setEnabled(!isReadOnly() && z);
        }
    }

    private void setupExpansionView(boolean z, boolean z2) {
        this.mExpansionView.setImageDrawable(getContext().getDrawable(z2 ? R.drawable.quantum_ic_expand_more_vd_theme_24 : R.drawable.quantum_ic_expand_less_vd_theme_24));
        this.mExpansionView.setContentDescription(z2 ? this.mExpandButtonDescription : this.mCollapseButtonDescription);
        this.mExpansionViewContainer.setVisibility(z ? 0 : 4);
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    protected void requestFocusForFirstEditField() {
        EditText[] editTextArr = this.mFieldEditTexts;
        if (editTextArr == null || editTextArr.length == 0) {
            return;
        }
        EditText editText = null;
        int length = editTextArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            EditText editText2 = editTextArr[i];
            if (editText == null && editText2.getVisibility() == 0) {
                editText = editText2;
            }
            if (editText2.hasFocus()) {
                z = true;
                break;
            }
            i++;
        }
        if (z || editText == null) {
            return;
        }
        editText.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUnFixed(Editable editable) {
        Object[] spans = editable.getSpans(0, editable.length(), Object.class);
        if (spans == null) {
            return false;
        }
        boolean z = false;
        for (Object obj : spans) {
            if ((editable.getSpanFlags(obj) & 256) == 256) {
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getNameField(String str) {
        EditText editText;
        if ("data3".equals(str)) {
            editText = (EditText) this.mFields.getChildAt(1);
        } else if ("data2".equals(str)) {
            editText = (EditText) this.mFields.getChildAt(3);
        } else {
            editText = "data5".equals(str) ? (EditText) this.mFields.getChildAt(2) : null;
        }
        return editText != null ? editText.getText().toString() : "";
    }

    @Override // com.android.contacts.editor.LabeledEditorView, com.android.contacts.editor.Editor
    public void setValues(DataKind dataKind, ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        super.setValues(dataKind, valuesDelta, rawContactDelta, z, viewIdGenerator);
        EditText[] editTextArr = this.mFieldEditTexts;
        boolean z2 = false;
        if (editTextArr != null) {
            for (EditText editText : editTextArr) {
                this.mFields.removeView(editText);
            }
        }
        List<AccountType.EditField> list = dataKind.fieldList;
        int size = list == null ? 0 : list.size();
        this.mFieldEditTexts = new EditText[size];
        int i = 0;
        boolean z3 = false;
        while (true) {
            boolean z4 = true;
            if (i >= size) {
                break;
            }
            AccountType.EditField editField = dataKind.fieldList.get(i);
            EditText editText2 = new EditText(getContext());
            editText2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            editText2.setTextSize(0, getResources().getDimension(R.dimen.editor_form_text_size));
            editText2.setHintTextColor(this.mHintTextColorUnfocused);
            this.mFieldEditTexts[i] = editText2;
            editText2.setId(viewIdGenerator.getId(rawContactDelta, dataKind, valuesDelta, i));
            int i2 = editField.titleRes;
            if (i2 > 0) {
                editText2.setHint(i2);
            }
            int i3 = editField.inputType;
            editText2.setInputType(i3);
            if (i3 == 3) {
                PhoneNumberFormatter.setPhoneNumberFormattingTextWatcher(getContext(), editText2, rawContactDelta.isContactInsert());
                editText2.setTextDirection(3);
            }
            editText2.setTextAlignment(5);
            int i4 = editField.minLines;
            if (i4 > 1) {
                editText2.setMinLines(i4);
            } else {
                editText2.setMinHeight(this.mMinFieldHeight);
            }
            editText2.setImeOptions(33554437);
            final String str = editField.column;
            String asString = valuesDelta.getAsString(str);
            if ("vnd.android.cursor.item/phone_v2".equals(dataKind.mimeType)) {
                editText2.setText(PhoneNumberUtilsCompat.createTtsSpannable(asString));
            } else {
                editText2.setText(asString);
            }
            setDeleteButtonVisible(!TextUtils.isEmpty(asString));
            editText2.addTextChangedListener(new TextWatcher() { // from class: com.android.contacts.editor.TextFieldsEditorView.3
                private int mStart = 0;

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    TextFieldsEditorView.this.onFieldChanged(str, editable.toString());
                    if (DataKind.PSEUDO_MIME_TYPE_NAME.equals(TextFieldsEditorView.this.getKind().mimeType)) {
                        String obj = editable.toString();
                        int length = obj.length() - TextFieldsEditorView.this.mFixedDisplayName.length();
                        if (TextFieldsEditorView.this.isUnFixed(editable) || length == 0) {
                            TextFieldsEditorView.this.updatePhonetic(str, TextFieldsEditorView.this.mFixedPhonetic + obj.substring(this.mStart, obj.length()));
                            return;
                        }
                        TextFieldsEditorView textFieldsEditorView = TextFieldsEditorView.this;
                        textFieldsEditorView.mFixedPhonetic = textFieldsEditorView.getPhonetic(str);
                        TextFieldsEditorView.this.mFixedDisplayName = obj;
                    }
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                    if (DataKind.PSEUDO_MIME_TYPE_NAME.equals(TextFieldsEditorView.this.getKind().mimeType) && TextFieldsEditorView.this.needInputInitialize) {
                        TextFieldsEditorView textFieldsEditorView = TextFieldsEditorView.this;
                        textFieldsEditorView.mFixedPhonetic = textFieldsEditorView.getPhonetic(str);
                        TextFieldsEditorView textFieldsEditorView2 = TextFieldsEditorView.this;
                        textFieldsEditorView2.mFixedDisplayName = textFieldsEditorView2.getNameField(str);
                        TextFieldsEditorView.this.needInputInitialize = false;
                    }
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                    this.mStart = i5;
                    if ("vnd.android.cursor.item/phone_v2".equals(TextFieldsEditorView.this.getKind().mimeType) && (charSequence instanceof Spannable)) {
                        Spannable spannable = (Spannable) charSequence;
                        for (TtsSpan ttsSpan : (TtsSpan[]) spannable.getSpans(0, charSequence.length(), TtsSpan.class)) {
                            spannable.removeSpan(ttsSpan);
                        }
                        PhoneNumberUtilsCompat.addTtsSpan(spannable, 0, charSequence.length());
                    }
                }
            });
            editText2.setEnabled(isEnabled() && !z);
            editText2.setOnFocusChangeListener(this.mTextFocusChangeListener);
            if (editField.shortForm) {
                editText2.setVisibility(this.mHideOptional ? 0 : 8);
            } else if (editField.longForm) {
                editText2.setVisibility(this.mHideOptional ? 8 : 0);
            } else {
                boolean z5 = !ContactsUtils.isGraphic(asString) && editField.optional;
                editText2.setVisibility(this.mHideOptional && z5 ? 8 : 0);
                if (!z3 && !z5) {
                    z4 = false;
                }
                z3 = z4;
                this.mFields.addView(editText2);
                i++;
            }
            z3 = true;
            this.mFields.addView(editText2);
            i++;
        }
        if (this.mExpansionView != null) {
            setupExpansionView(z3, this.mHideOptional);
            ImageView imageView = this.mExpansionView;
            if (!z && isEnabled()) {
                z2 = true;
            }
            imageView.setEnabled(z2);
        }
        updateEmptiness();
    }

    @Override // com.android.contacts.editor.Editor
    public boolean isEmpty() {
        for (int i = 0; i < this.mFields.getChildCount(); i++) {
            if (!TextUtils.isEmpty(((EditText) this.mFields.getChildAt(i)).getText())) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mHideOptional = this.mHideOptional;
        EditText[] editTextArr = this.mFieldEditTexts;
        int length = editTextArr == null ? 0 : editTextArr.length;
        savedState.mVisibilities = new int[length];
        for (int i = 0; i < length; i++) {
            savedState.mVisibilities[i] = this.mFieldEditTexts[i].getVisibility();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mHideOptional = savedState.mHideOptional;
        EditText[] editTextArr = this.mFieldEditTexts;
        int length = editTextArr == null ? 0 : editTextArr.length;
        int[] iArr = savedState.mVisibilities;
        int min = Math.min(length, iArr == null ? 0 : iArr.length);
        for (int i = 0; i < min; i++) {
            this.mFieldEditTexts[i].setVisibility(savedState.mVisibilities[i]);
        }
        rebuildValues();
    }

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.contacts.editor.TextFieldsEditorView.SavedState.1
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
        public boolean mHideOptional;
        public int[] mVisibilities;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            int[] iArr = new int[parcel.readInt()];
            this.mVisibilities = iArr;
            parcel.readIntArray(iArr);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mVisibilities.length);
            parcel.writeIntArray(this.mVisibilities);
        }
    }

    @Override // com.android.contacts.editor.Editor
    public void clearAllFields() {
        EditText[] editTextArr = this.mFieldEditTexts;
        if (editTextArr != null) {
            for (EditText editText : editTextArr) {
                editText.setText("");
            }
        }
    }
}
