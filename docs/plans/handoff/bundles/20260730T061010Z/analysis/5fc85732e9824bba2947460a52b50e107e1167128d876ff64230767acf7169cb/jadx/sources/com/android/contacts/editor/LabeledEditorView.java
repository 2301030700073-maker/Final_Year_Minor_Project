package com.android.contacts.editor;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.android.contacts.ContactsUtils;
import com.android.contacts.R;
import com.android.contacts.editor.Editor;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.RawContactModifier;
import com.android.contacts.model.ValuesDelta;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.dataitem.DataKind;
import com.android.contacts.util.DialogManager;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class LabeledEditorView extends LinearLayout implements Editor, DialogManager.DialogShowingView {
    public static final AccountType.EditType CUSTOM_SELECTION = new AccountType.EditType(0, 0);
    private ImageView mDelete;
    protected View mDeleteContainer;
    private DialogManager mDialogManager;
    private EditTypeAdapter mEditTypeAdapter;
    private ValuesDelta mEntry;
    private boolean mIsAttachedToWindow;
    private boolean mIsDeletable;
    private DataKind mKind;
    private Spinner mLabel;
    private Editor.EditorListener mListener;
    private boolean mReadOnly;
    private int mSelectedLabelIndex;
    private AdapterView.OnItemSelectedListener mSpinnerListener;
    private RawContactDelta mState;
    private AccountType.EditType mType;
    private ViewIdGenerator mViewIdGenerator;
    private boolean mWasEmpty;

    public String getPhonetic(String str) {
        return "";
    }

    protected void onLabelRebuilt() {
    }

    protected abstract void requestFocusForFirstEditField();

    public void updatePhonetic(String str, String str2) {
    }

    public LabeledEditorView(Context context) {
        super(context);
        this.mWasEmpty = true;
        this.mIsDeletable = true;
        this.mDialogManager = null;
        this.mSpinnerListener = new AdapterView.OnItemSelectedListener() { // from class: com.android.contacts.editor.LabeledEditorView.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                LabeledEditorView.this.onTypeSelectionChange(i);
            }
        };
        init(context);
    }

    public LabeledEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mWasEmpty = true;
        this.mIsDeletable = true;
        this.mDialogManager = null;
        this.mSpinnerListener = new AdapterView.OnItemSelectedListener() { // from class: com.android.contacts.editor.LabeledEditorView.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                LabeledEditorView.this.onTypeSelectionChange(i);
            }
        };
        init(context);
    }

    public LabeledEditorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mWasEmpty = true;
        this.mIsDeletable = true;
        this.mDialogManager = null;
        this.mSpinnerListener = new AdapterView.OnItemSelectedListener() { // from class: com.android.contacts.editor.LabeledEditorView.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                LabeledEditorView.this.onTypeSelectionChange(i2);
            }
        };
        init(context);
    }

    private void init(Context context) {
        context.getResources().getDimensionPixelSize(R.dimen.editor_min_line_item_height);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        Spinner spinner = (Spinner) findViewById(R.id.spinner);
        this.mLabel = spinner;
        spinner.setId(-1);
        this.mLabel.setOnItemSelectedListener(this.mSpinnerListener);
        ViewSelectedFilter.suppressViewSelectedEvent(this.mLabel);
        this.mDelete = (ImageView) findViewById(R.id.delete_button);
        View findViewById = findViewById(R.id.delete_button_container);
        this.mDeleteContainer = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.LabeledEditorView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new Handler().post(new Runnable() { // from class: com.android.contacts.editor.LabeledEditorView.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (LabeledEditorView.this.mIsAttachedToWindow && LabeledEditorView.this.mListener != null) {
                            LabeledEditorView.this.mListener.onDeleteRequested(LabeledEditorView.this);
                        }
                    }
                });
            }
        });
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), (int) getResources().getDimension(R.dimen.editor_padding_between_editor_views));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsAttachedToWindow = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsAttachedToWindow = false;
    }

    public void markDeleted() {
        this.mEntry.markDeleted();
    }

    @Override // com.android.contacts.editor.Editor
    public void deleteEditor() {
        markDeleted();
        EditorAnimator.getInstance().removeEditorView(this);
    }

    public boolean isReadOnly() {
        return this.mReadOnly;
    }

    private void setupLabelButton(boolean z) {
        if (z) {
            this.mLabel.setEnabled(!this.mReadOnly && isEnabled());
            this.mLabel.setVisibility(0);
        } else {
            this.mLabel.setVisibility(8);
        }
    }

    private void setupDeleteButton() {
        if (this.mIsDeletable) {
            boolean z = false;
            this.mDeleteContainer.setVisibility(0);
            ImageView imageView = this.mDelete;
            if (!this.mReadOnly && isEnabled()) {
                z = true;
            }
            imageView.setEnabled(z);
            return;
        }
        this.mDeleteContainer.setVisibility(4);
    }

    public void setDeleteButtonVisible(boolean z) {
        if (this.mIsDeletable) {
            this.mDeleteContainer.setVisibility(z ? 0 : 4);
        }
    }

    protected void onOptionalFieldVisibilityChange() {
        Editor.EditorListener editorListener = this.mListener;
        if (editorListener != null) {
            editorListener.onRequest(5);
        }
    }

    @Override // com.android.contacts.editor.Editor
    public void setEditorListener(Editor.EditorListener editorListener) {
        this.mListener = editorListener;
    }

    protected Editor.EditorListener getEditorListener() {
        return this.mListener;
    }

    @Override // com.android.contacts.editor.Editor
    public void setDeletable(boolean z) {
        this.mIsDeletable = z;
        setupDeleteButton();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.mLabel.setEnabled(!this.mReadOnly && z);
        this.mDelete.setEnabled(!this.mReadOnly && z);
    }

    protected DataKind getKind() {
        return this.mKind;
    }

    protected ValuesDelta getEntry() {
        return this.mEntry;
    }

    protected AccountType.EditType getType() {
        return this.mType;
    }

    public void rebuildLabel() {
        EditTypeAdapter editTypeAdapter = new EditTypeAdapter(getContext());
        this.mEditTypeAdapter = editTypeAdapter;
        editTypeAdapter.setSelectedIndex(this.mSelectedLabelIndex);
        this.mLabel.setAdapter((SpinnerAdapter) this.mEditTypeAdapter);
        if (this.mEditTypeAdapter.hasCustomSelection()) {
            this.mLabel.setSelection(this.mEditTypeAdapter.getPosition(CUSTOM_SELECTION));
            this.mDeleteContainer.setContentDescription(getContext().getString(R.string.editor_delete_view_description, this.mEntry.getAsString(this.mType.customColumn), getContext().getString(this.mKind.titleRes)));
            return;
        }
        AccountType.EditType editType = this.mType;
        if (editType != null && editType.labelRes > 0 && this.mKind.titleRes > 0) {
            this.mLabel.setSelection(this.mEditTypeAdapter.getPosition(editType));
            this.mDeleteContainer.setContentDescription(getContext().getString(R.string.editor_delete_view_description, getContext().getString(this.mType.labelRes), getContext().getString(this.mKind.titleRes)));
        } else if (this.mKind.titleRes > 0) {
            this.mDeleteContainer.setContentDescription(getContext().getString(R.string.editor_delete_view_description_short, getContext().getString(this.mKind.titleRes)));
        }
    }

    public void onFieldChanged(String str, String str2) {
        if (isFieldChanged(str, str2)) {
            saveValue(str, str2);
            notifyEditorListener();
        }
    }

    protected void saveValue(String str, String str2) {
        this.mEntry.put(str, str2);
    }

    protected final void updateEmptiness() {
        this.mWasEmpty = isEmpty();
    }

    protected void notifyEditorListener() {
        Editor.EditorListener editorListener = this.mListener;
        if (editorListener != null) {
            editorListener.onRequest(2);
        }
        boolean isEmpty = isEmpty();
        if (this.mWasEmpty != isEmpty) {
            if (isEmpty) {
                Editor.EditorListener editorListener2 = this.mListener;
                if (editorListener2 != null) {
                    editorListener2.onRequest(3);
                }
                if (this.mIsDeletable) {
                    this.mDeleteContainer.setVisibility(4);
                }
            } else {
                Editor.EditorListener editorListener3 = this.mListener;
                if (editorListener3 != null) {
                    editorListener3.onRequest(4);
                }
                if (this.mIsDeletable) {
                    this.mDeleteContainer.setVisibility(0);
                }
            }
            this.mWasEmpty = isEmpty;
            EditTypeAdapter editTypeAdapter = this.mEditTypeAdapter;
            if (editTypeAdapter != null) {
                editTypeAdapter.notifyDataSetChanged();
            }
        }
    }

    protected boolean isFieldChanged(String str, String str2) {
        String asString = this.mEntry.getAsString(str);
        if (asString == null) {
            asString = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        return !TextUtils.equals(asString, str2);
    }

    protected void rebuildValues() {
        setValues(this.mKind, this.mEntry, this.mState, this.mReadOnly, this.mViewIdGenerator);
    }

    public void setValues(DataKind dataKind, ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        this.mKind = dataKind;
        this.mEntry = valuesDelta;
        this.mState = rawContactDelta;
        this.mReadOnly = z;
        this.mViewIdGenerator = viewIdGenerator;
        setId(viewIdGenerator.getId(rawContactDelta, dataKind, valuesDelta, -1));
        if (!valuesDelta.isVisible()) {
            setVisibility(8);
            return;
        }
        boolean z2 = false;
        setVisibility(0);
        setupLabelButton(RawContactModifier.hasEditTypes(dataKind));
        Spinner spinner = this.mLabel;
        if (!z && isEnabled()) {
            z2 = true;
        }
        spinner.setEnabled(z2);
        if (this.mKind.titleRes > 0) {
            this.mLabel.setContentDescription(getContext().getResources().getString(this.mKind.titleRes));
        }
        this.mType = RawContactModifier.getCurrentType(valuesDelta, dataKind);
        rebuildLabel();
    }

    public ValuesDelta getValues() {
        return this.mEntry;
    }

    private Dialog createCustomDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        LayoutInflater from = LayoutInflater.from(builder.getContext());
        builder.setTitle(R.string.customLabelPickerTitle);
        View inflate = from.inflate(R.layout.contact_editor_label_name_dialog, (ViewGroup) null);
        final EditText editText = (EditText) inflate.findViewById(R.id.custom_dialog_content);
        editText.setInputType(8193);
        editText.setSaveEnabled(true);
        builder.setView(inflate);
        editText.requestFocus();
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.LabeledEditorView.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String trim = editText.getText().toString().trim();
                if (ContactsUtils.isGraphic(trim)) {
                    ArrayList<AccountType.EditType> validTypes = RawContactModifier.getValidTypes(LabeledEditorView.this.mState, LabeledEditorView.this.mKind, null, true, null, true);
                    LabeledEditorView.this.mType = null;
                    Iterator<AccountType.EditType> it = validTypes.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        AccountType.EditType next = it.next();
                        if (next.customColumn != null) {
                            LabeledEditorView.this.mType = next;
                            break;
                        }
                    }
                    if (LabeledEditorView.this.mType == null) {
                        return;
                    }
                    LabeledEditorView.this.mEntry.put(LabeledEditorView.this.mKind.typeColumn, LabeledEditorView.this.mType.rawValue);
                    LabeledEditorView.this.mEntry.put(LabeledEditorView.this.mType.customColumn, trim);
                    LabeledEditorView.this.rebuildLabel();
                    LabeledEditorView.this.requestFocusForFirstEditField();
                    LabeledEditorView.this.onLabelRebuilt();
                }
            }
        });
        builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
        final AlertDialog create = builder.create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.contacts.editor.LabeledEditorView.4
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                LabeledEditorView.this.updateCustomDialogOkButtonState(create, editText);
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: com.android.contacts.editor.LabeledEditorView.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                LabeledEditorView.this.updateCustomDialogOkButtonState(create, editText);
            }
        });
        create.getWindow().setSoftInputMode(5);
        return create;
    }

    void updateCustomDialogOkButtonState(AlertDialog alertDialog, EditText editText) {
        alertDialog.getButton(-1).setEnabled(!TextUtils.isEmpty(editText.getText().toString().trim()));
    }

    protected void onTypeSelectionChange(int i) {
        AccountType.EditType item = this.mEditTypeAdapter.getItem(i);
        if (this.mEditTypeAdapter.hasCustomSelection() && item == CUSTOM_SELECTION) {
            return;
        }
        AccountType.EditType editType = this.mType;
        if (editType == item && editType.customColumn == null) {
            return;
        }
        if (item.customColumn != null) {
            showDialog(1);
            return;
        }
        this.mType = item;
        this.mEntry.put(this.mKind.typeColumn, item.rawValue);
        this.mSelectedLabelIndex = i;
        rebuildLabel();
        requestFocusForFirstEditField();
        onLabelRebuilt();
    }

    void showDialog(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("dialog_id", i);
        getDialogManager().showDialogInView(this, bundle);
    }

    private DialogManager getDialogManager() {
        if (this.mDialogManager == null) {
            Object context = getContext();
            if (!(context instanceof DialogManager.DialogShowingViewActivity)) {
                throw new IllegalStateException("View must be hosted in an Activity that implements DialogManager.DialogShowingViewActivity");
            }
            this.mDialogManager = ((DialogManager.DialogShowingViewActivity) context).getDialogManager();
        }
        return this.mDialogManager;
    }

    public Dialog createDialog(Bundle bundle) {
        if (bundle == null) {
            throw new IllegalArgumentException("bundle must not be null");
        }
        int i = bundle.getInt("dialog_id");
        if (i == 1) {
            return createCustomDialog();
        }
        throw new IllegalArgumentException("Invalid dialogId: " + i);
    }

    private class EditTypeAdapter extends ArrayAdapter<AccountType.EditType> {
        private boolean mHasCustomSelection;
        private final LayoutInflater mInflater;
        private int mSelectedIndex;
        private int mTextColorDark;
        private int mTextColorHintUnfocused;

        public EditTypeAdapter(Context context) {
            super(context, 0);
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
            this.mTextColorHintUnfocused = context.getResources().getColor(R.color.editor_disabled_text_color);
            this.mTextColorDark = context.getResources().getColor(R.color.primary_text_color);
            if (LabeledEditorView.this.mType != null && LabeledEditorView.this.mType.customColumn != null && LabeledEditorView.this.mEntry.getAsString(LabeledEditorView.this.mType.customColumn) != null) {
                add(LabeledEditorView.CUSTOM_SELECTION);
                this.mHasCustomSelection = true;
            }
            addAll(RawContactModifier.getValidTypes(LabeledEditorView.this.mState, LabeledEditorView.this.mKind, LabeledEditorView.this.mType, true, null, false));
        }

        public boolean hasCustomSelection() {
            return this.mHasCustomSelection;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView createViewFromResource = createViewFromResource(i, view, viewGroup, R.layout.edit_simple_spinner_item);
            createViewFromResource.setBackground(null);
            if (!LabeledEditorView.this.isEmpty()) {
                createViewFromResource.setTextColor(this.mTextColorDark);
            } else {
                createViewFromResource.setTextColor(this.mTextColorHintUnfocused);
            }
            return createViewFromResource;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            CheckedTextView checkedTextView = (CheckedTextView) createViewFromResource(i, view, viewGroup, android.R.layout.simple_spinner_dropdown_item);
            checkedTextView.setBackground(getContext().getDrawable(R.drawable.drawer_item_background));
            checkedTextView.setChecked(i == this.mSelectedIndex);
            return checkedTextView;
        }

        private TextView createViewFromResource(int i, View view, ViewGroup viewGroup, int i2) {
            TextView textView;
            String string;
            if (view == null) {
                textView = (TextView) this.mInflater.inflate(i2, viewGroup, false);
                textView.setTextSize(0, LabeledEditorView.this.getResources().getDimension(R.dimen.editor_form_text_size));
                textView.setTextColor(this.mTextColorDark);
            } else {
                textView = (TextView) view;
            }
            AccountType.EditType item = getItem(i);
            if (item == LabeledEditorView.CUSTOM_SELECTION) {
                string = LabeledEditorView.this.mEntry.getAsString(LabeledEditorView.this.mType.customColumn);
            } else {
                string = getContext().getString(item.labelRes);
            }
            textView.setText(string);
            return textView;
        }

        public void setSelectedIndex(int i) {
            this.mSelectedIndex = i;
        }
    }
}
