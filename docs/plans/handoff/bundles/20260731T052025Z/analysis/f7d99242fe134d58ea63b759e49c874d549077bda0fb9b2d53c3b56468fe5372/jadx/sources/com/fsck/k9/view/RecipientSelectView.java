package com.fsck.k9.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListPopupWindow;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.app.ActivityRecreator;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.AsyncTaskLoader;
import com.fsck.k9.R;
import com.fsck.k9.activity.AlternateRecipientAdapter;
import com.fsck.k9.activity.compose.RecipientAdapter;
import com.fsck.k9.activity.compose.RecipientLoader;
import com.fsck.k9.mail.Address;
import com.fsck.k9.ui.compose.RecipientCircleImageView;
import com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0;
import com.google.android.material.textview.MaterialTextView;
import com.tokenautocomplete.TokenCompleteTextView;
import de.hdodenhof.circleimageview.CircleImageView;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.io.CloseableKt;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class RecipientSelectView extends TokenCompleteTextView implements LoaderManager.LoaderCallbacks {
    public RecipientAdapter adapter;
    public AlternateRecipientAdapter alternatesAdapter;
    public ListPopupWindow alternatesPopup;
    public Recipient alternatesPopupRecipient;
    public String cryptoProvider;
    public final UserInputEmailAddressParser emailAddressParser;
    public TokenListener listener;
    public LoaderManager loaderManager;
    public final DefaultMessageListPreferencesManager messageListPreferencesManager;
    public boolean showCryptoEnabled;
    public int tokenTextSize;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RecipientTokenSpan extends TokenCompleteTextView.TokenImageSpan {
        public final View view;

        public RecipientTokenSpan(View view, Recipient recipient) {
            this.cachedMaxWidth = -1;
            this.layout = RecipientSelectView.this;
            super.view = view;
            view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            this.token = recipient;
            this.view = view;
        }

        @Override // com.tokenautocomplete.TokenCompleteTextView.TokenImageSpan, android.text.style.ReplacementSpan
        public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
            this.view.findViewById(R.id.contact_photo).getViewTreeObserver().dispatchOnPreDraw();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RecipientTokenViewHolder {
        public final View cryptoStatus;
        public final View cryptoStatusEnabled;
        public final View cryptoStatusError;
        public final CircleImageView vContactPhoto;
        public final MaterialTextView vName;

        public RecipientTokenViewHolder(View view) {
            this.vName = (MaterialTextView) view.findViewById(android.R.id.text1);
            this.vContactPhoto = (CircleImageView) view.findViewById(R.id.contact_photo);
            this.cryptoStatus = view.findViewById(R.id.contact_crypto_status_icon);
            this.cryptoStatusEnabled = view.findViewById(R.id.contact_crypto_status_icon_enabled);
            this.cryptoStatusError = view.findViewById(R.id.contact_crypto_status_icon_error);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface TokenListener extends TokenCompleteTextView.TokenListener {
        void onTokenChanged(Recipient recipient);
    }

    public RecipientSelectView(Context context) {
        super(context, null, R.attr.autoCompleteTextViewStyle);
        this.lastLayout = null;
        this.initialized = false;
        this.performBestGuess = true;
        this.savingState = false;
        this.shouldFocusNext = false;
        this.allowCollapse = true;
        this.internalEditInProgress = false;
        this.tokenLimit = -1;
        this.lastCompletionText = null;
        init$1();
        this.emailAddressParser = (UserInputEmailAddressParser) CloseableKt.get$default(UserInputEmailAddressParser.class);
        this.messageListPreferencesManager = (DefaultMessageListPreferencesManager) CloseableKt.get$default(DefaultMessageListPreferencesManager.class);
        this.tokenTextSize = -1;
        initView(context);
    }

    private int getTokenCount() {
        return getObjects().size();
    }

    public final void addRecipients(Recipient... recipientArr) {
        for (Recipient recipient : recipientArr) {
            addObjectSync(recipient);
        }
    }

    public final void bindObjectView(Recipient recipient, View view) {
        RecipientTokenViewHolder recipientTokenViewHolder = (RecipientTokenViewHolder) view.getTag();
        MaterialTextView materialTextView = recipientTokenViewHolder.vName;
        View view2 = recipientTokenViewHolder.cryptoStatusError;
        View view3 = recipientTokenViewHolder.cryptoStatusEnabled;
        View view4 = recipientTokenViewHolder.cryptoStatus;
        boolean z = ((DisplayMessageListSettings) this.messageListPreferencesManager.getConfig()).isShowCorrespondentNames;
        recipient.getClass();
        String str = null;
        if (z && !TextUtils.isEmpty(recipient.address.personal)) {
            str = recipient.address.personal;
        }
        if (str == null) {
            str = recipient.address.address;
        }
        materialTextView.setText(str);
        int i = this.tokenTextSize;
        if (i != -1) {
            recipientTokenViewHolder.vName.setTextSize(2, i);
        }
        getContext();
        RecipientAdapter.setContactPhotoOrPlaceholder(recipientTokenViewHolder.vContactPhoto, recipient);
        int i2 = 8;
        if (this.cryptoProvider == null) {
            view4.setVisibility(8);
            view3.setVisibility(8);
            view2.setVisibility(8);
            return;
        }
        int i3 = recipient.cryptoStatus;
        boolean z2 = i3 == 4 || i3 == 3;
        boolean z3 = this.showCryptoEnabled;
        view4.setVisibility((z3 || !z2) ? 8 : 0);
        view3.setVisibility((z3 && z2) ? 0 : 8);
        if (z3 && !z2) {
            i2 = 0;
        }
        view2.setVisibility(i2);
    }

    @Override // com.tokenautocomplete.TokenCompleteTextView
    public final RecipientTokenSpan buildSpanForObject(Object obj) {
        Recipient recipient = (Recipient) obj;
        if (recipient == null) {
            return null;
        }
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.recipient_token_item, (ViewGroup) null, false);
        ((RecipientCircleImageView) inflate.findViewById(R.id.contact_photo)).setOnSetImageDrawableListener(new MaterialButton$$ExternalSyntheticLambda0(4, this));
        inflate.setTag(new RecipientTokenViewHolder(inflate));
        bindObjectView(recipient, inflate);
        return new RecipientTokenSpan(inflate, recipient);
    }

    public Address[] getAddresses() {
        List objects = getObjects();
        int size = objects.size();
        Address[] addressArr = new Address[size];
        for (int i = 0; i < size; i++) {
            addressArr[i] = ((Recipient) objects.get(i)).address;
        }
        return addressArr;
    }

    public final boolean hasUncompletedText() {
        String currentCompletionText = currentCompletionText();
        if (TextUtils.isEmpty(currentCompletionText)) {
            return false;
        }
        return (currentCompletionText.startsWith("+") && currentCompletionText.substring(1).matches("[0-9]+")) ? false : true;
    }

    public final void initView(Context context) {
        this.alternatesPopup = new ListPopupWindow(context);
        AlternateRecipientAdapter alternateRecipientAdapter = new AlternateRecipientAdapter(context, this);
        this.alternatesAdapter = alternateRecipientAdapter;
        this.alternatesPopup.setAdapter(alternateRecipientAdapter);
        this.performBestGuess = true;
        RecipientAdapter recipientAdapter = new RecipientAdapter(context);
        this.adapter = recipientAdapter;
        setAdapter(recipientAdapter);
        setLongClickable(true);
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final AsyncTaskLoader onCreateLoader(int i, Bundle bundle) {
        if (i == 0) {
            String string = (bundle == null || !bundle.containsKey("query")) ? "" : bundle.getString("query");
            this.adapter.highlight = string;
            return new RecipientLoader(getContext(), this.cryptoProvider, string);
        }
        if (i != 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m("Unknown Loader ID: ", i));
            return null;
        }
        Recipient recipient = this.alternatesPopupRecipient;
        Long l = recipient.contactId;
        Uri lookupUri = l != null ? ContactsContract.Contacts.getLookupUri(l.longValue(), recipient.contactLookupKey) : null;
        return lookupUri != null ? new RecipientLoader(getContext(), this.cryptoProvider, lookupUri, true) : new RecipientLoader(getContext(), this.cryptoProvider, this.alternatesPopupRecipient.address);
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        LoaderManager loaderManager = this.loaderManager;
        if (loaderManager != null) {
            loaderManager.destroyLoader(1);
            this.loaderManager.destroyLoader(0);
            this.loaderManager = null;
        }
    }

    @Override // com.tokenautocomplete.TokenCompleteTextView, android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        InputMethodManager inputMethodManager;
        if (!z) {
            performCompletion();
        }
        super.onFocusChanged(z, i, rect);
        if (z) {
            boolean z2 = this.suppressImeOnNextFocus;
            this.suppressImeOnNextFocus = false;
            if (z2 || (inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method")) == null) {
                return;
            }
            inputMethodManager.showSoftInput(this, 1);
        }
    }

    @Override // com.tokenautocomplete.TokenCompleteTextView, android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        this.alternatesPopup.dismiss();
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.alternatesPopup.isShowing()) {
            return super.onKeyPreIme(i, keyEvent);
        }
        this.alternatesPopup.dismiss();
        return true;
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final void onLoadFinished(AsyncTaskLoader asyncTaskLoader, Object obj) {
        List list = (List) obj;
        if (this.loaderManager == null) {
            return;
        }
        int i = asyncTaskLoader.mId;
        if (i == 0) {
            RecipientAdapter recipientAdapter = this.adapter;
            recipientAdapter.recipients = list;
            recipientAdapter.notifyDataSetChanged();
        } else {
            if (i != 1) {
                return;
            }
            new Handler().post(new ActivityRecreator.AnonymousClass1(17, this, list, false));
            this.loaderManager.destroyLoader(1);
        }
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final void onLoaderReset(AsyncTaskLoader asyncTaskLoader) {
        if (asyncTaskLoader.mId == 0) {
            RecipientAdapter recipientAdapter = this.adapter;
            recipientAdapter.highlight = null;
            recipientAdapter.recipients = null;
            recipientAdapter.notifyDataSetChanged();
        }
    }

    public final List parseRecipients(String str) {
        try {
            this.emailAddressParser.getClass();
            ArrayList parse = UserInputEmailAddressParser.parse(str);
            if (parse.isEmpty()) {
                setError(getContext().getString(R.string.recipient_error_parse_failed));
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = parse.iterator();
            while (it.hasNext()) {
                arrayList.add(new Recipient((Address) it.next()));
            }
            return arrayList;
        } catch (NonAsciiEmailAddressException unused) {
            setError(getContext().getString(R.string.recipient_error_non_ascii));
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.tokenautocomplete.TokenCompleteTextView, android.widget.AutoCompleteTextView
    public final void performCompletion() {
        if (getListSelection() != -1 || !enoughToFilter()) {
            super.performCompletion();
            return;
        }
        List parseRecipients = parseRecipients(currentCompletionText());
        if (parseRecipients.isEmpty()) {
            return;
        }
        clearCompletionText();
        Iterator it = parseRecipients.iterator();
        while (it.hasNext()) {
            addObjectSync((Recipient) it.next());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public final void performFiltering(CharSequence charSequence, int i) {
        if (this.loaderManager == null) {
            return;
        }
        String currentCompletionText = currentCompletionText();
        if (TextUtils.isEmpty(currentCompletionText) || currentCompletionText.length() < 2) {
            this.loaderManager.destroyLoader(0);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("query", currentCompletionText);
        this.loaderManager.restartLoader(0, bundle, this);
    }

    @Override // com.tokenautocomplete.TokenCompleteTextView, android.widget.AutoCompleteTextView
    public final void replaceText(CharSequence charSequence) {
        super.replaceText(charSequence);
        ((InputMethodManager) getContext().getSystemService("input_method")).updateSelection(this, getSelectionStart(), getSelectionEnd(), -1, -1);
    }

    public void setCryptoProvider(String str) {
        this.cryptoProvider = str;
    }

    public void setLoaderManager(LoaderManager loaderManager) {
        this.loaderManager = loaderManager;
    }

    public void setShowCryptoEnabled(boolean z) {
        this.showCryptoEnabled = z;
        Editable text = getText();
        if (text == null) {
            return;
        }
        for (RecipientTokenSpan recipientTokenSpan : (RecipientTokenSpan[]) text.getSpans(0, text.length(), RecipientTokenSpan.class)) {
            bindObjectView(recipientTokenSpan.token, recipientTokenSpan.view);
        }
        invalidate();
        redrawTokens();
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        setSelection(0);
        setSelection(selectionStart, selectionEnd);
    }

    public void setTokenListener(TokenListener tokenListener) {
        super.setTokenListener((TokenCompleteTextView.TokenListener) tokenListener);
        this.listener = tokenListener;
    }

    public void setTokenTextSize(int i) {
        this.tokenTextSize = i;
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        if (this.adapter != null) {
            super.showDropDown();
        }
    }

    public final boolean tryPerformCompletion() {
        if (!hasUncompletedText()) {
            return false;
        }
        int tokenCount = getTokenCount();
        performCompletion();
        return tokenCount != getTokenCount();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Recipient implements Serializable {
        public Address address;
        public String addressLabel;
        public final Long contactId;
        public final String contactLookupKey;
        public int cryptoStatus;
        public transient Uri photoThumbnailUri;
        public final String sortKey;
        public final boolean starred;
        public final int timesContacted;

        public Recipient(String str, String str2, String str3, long j, String str4, int i, String str5, boolean z) {
            this.address = new Address(4, str2, str);
            this.contactId = Long.valueOf(j);
            this.addressLabel = str3;
            this.cryptoStatus = 1;
            this.contactLookupKey = str4;
            this.timesContacted = i;
            this.sortKey = str5;
            this.starred = z;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof Recipient) && this.address.equals(((Recipient) obj).address);
        }

        public final String toString() {
            return this.address.toString();
        }

        public Recipient(Address address) {
            this.address = address;
            this.contactId = null;
            this.cryptoStatus = 1;
            this.contactLookupKey = null;
            this.timesContacted = 0;
            this.sortKey = null;
            this.starred = false;
        }
    }

    public RecipientSelectView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        this.lastLayout = null;
        this.initialized = false;
        this.performBestGuess = true;
        this.savingState = false;
        this.shouldFocusNext = false;
        this.allowCollapse = true;
        this.internalEditInProgress = false;
        this.tokenLimit = -1;
        this.lastCompletionText = null;
        init$1();
        this.emailAddressParser = (UserInputEmailAddressParser) CloseableKt.get$default(UserInputEmailAddressParser.class);
        this.messageListPreferencesManager = (DefaultMessageListPreferencesManager) CloseableKt.get$default(DefaultMessageListPreferencesManager.class);
        this.tokenTextSize = -1;
        initView(context);
    }

    public RecipientSelectView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.lastLayout = null;
        this.initialized = false;
        this.performBestGuess = true;
        this.savingState = false;
        this.shouldFocusNext = false;
        this.allowCollapse = true;
        this.internalEditInProgress = false;
        this.tokenLimit = -1;
        this.lastCompletionText = null;
        init$1();
        this.emailAddressParser = (UserInputEmailAddressParser) CloseableKt.get$default(UserInputEmailAddressParser.class);
        this.messageListPreferencesManager = (DefaultMessageListPreferencesManager) CloseableKt.get$default(DefaultMessageListPreferencesManager.class);
        this.tokenTextSize = -1;
        initView(context);
    }
}
