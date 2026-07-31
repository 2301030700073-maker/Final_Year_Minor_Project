package com.fsck.k9.activity;

import android.content.Context;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.preference.Preference;
import androidx.work.Operation$State;
import com.fsck.k9.R;
import com.fsck.k9.activity.compose.RecipientAdapter;
import com.fsck.k9.ui.ContactBadge;
import com.fsck.k9.view.RecipientSelectView;
import com.google.android.material.textview.MaterialTextView;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AlternateRecipientAdapter extends BaseAdapter {
    public final Context context;
    public RecipientSelectView.Recipient currentRecipient;
    public final RecipientSelectView listener;
    public List recipients;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RecipientTokenHolder {
        public final View copyEmailAddress;
        public final MaterialTextView headerLabel;
        public final MaterialTextView headerName;
        public final ContactBadge headerPhoto;
        public final View headerRemove;
        public final MaterialTextView itemAddress;
        public final MaterialTextView itemAddressLabel;
        public final ImageView itemCryptoStatus;
        public final View layoutHeader;
        public final View layoutItem;

        public RecipientTokenHolder(View view) {
            this.layoutHeader = view.findViewById(R.id.alternate_container_header);
            this.layoutItem = view.findViewById(R.id.alternate_container_item);
            this.headerName = (MaterialTextView) view.findViewById(R.id.alternate_header_name);
            this.headerLabel = (MaterialTextView) view.findViewById(R.id.alternate_header_label);
            this.headerPhoto = (ContactBadge) view.findViewById(R.id.alternate_contact_photo);
            this.headerRemove = view.findViewById(R.id.alternate_remove);
            View findViewById = view.findViewById(R.id.button_copy_email_address);
            this.copyEmailAddress = findViewById;
            Operation$State.setTooltipText(findViewById, findViewById.getContext().getString(R.string.copy_action));
            this.itemAddress = (MaterialTextView) view.findViewById(R.id.alternate_address);
            this.itemAddressLabel = (MaterialTextView) view.findViewById(R.id.alternate_address_label);
            this.itemCryptoStatus = (ImageView) view.findViewById(R.id.alternate_crypto_status);
        }
    }

    public AlternateRecipientAdapter(Context context, RecipientSelectView recipientSelectView) {
        this.context = context;
        this.listener = recipientSelectView;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        List list = this.recipients;
        if (list == null) {
            return 2;
        }
        return list.size() + 2;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        if (i == 0 || i == 1) {
            return this.currentRecipient;
        }
        List list = this.recipients;
        if (list == null) {
            return null;
        }
        return (RecipientSelectView.Recipient) list.get(i - 2);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        RecipientSelectView.Recipient recipient;
        Context context = this.context;
        if (view == null) {
            view = LayoutInflater.from(context).inflate(R.layout.recipient_alternate_item, viewGroup, false);
            view.setTag(new RecipientTokenHolder(view));
        }
        int i2 = 1;
        if (i == 0 || i == 1) {
            recipient = this.currentRecipient;
        } else {
            List list = this.recipients;
            recipient = list == null ? null : (RecipientSelectView.Recipient) list.get(i - 2);
        }
        if (i == 0) {
            RecipientTokenHolder recipientTokenHolder = (RecipientTokenHolder) view.getTag();
            recipientTokenHolder.layoutHeader.setVisibility(0);
            recipientTokenHolder.layoutItem.setVisibility(8);
            ContactBadge contactBadge = recipientTokenHolder.headerPhoto;
            MaterialTextView materialTextView = recipientTokenHolder.headerLabel;
            MaterialTextView materialTextView2 = recipientTokenHolder.headerName;
            String str = recipient.address.personal;
            if (str == null) {
                str = context.getString(R.string.unknown_recipient);
            }
            materialTextView2.setText(str);
            if (TextUtils.isEmpty(recipient.addressLabel)) {
                materialTextView.setVisibility(8);
            } else {
                materialTextView.setText(recipient.addressLabel);
                materialTextView.setVisibility(0);
            }
            RecipientAdapter.setContactPhotoOrPlaceholder(contactBadge, recipient);
            Long l = recipient.contactId;
            Uri lookupUri = l == null ? null : ContactsContract.Contacts.getLookupUri(l.longValue(), recipient.contactLookupKey);
            contactBadge.contactUri = lookupUri;
            contactBadge.contactEmail = null;
            contactBadge.setEnabled(lookupUri != null);
            recipientTokenHolder.headerRemove.setOnClickListener(new Preference.AnonymousClass1(4, this));
            return view;
        }
        RecipientTokenHolder recipientTokenHolder2 = (RecipientTokenHolder) view.getTag();
        View view2 = recipientTokenHolder2.layoutHeader;
        View view3 = recipientTokenHolder2.layoutItem;
        view2.setVisibility(8);
        view3.setVisibility(0);
        ImageView imageView = recipientTokenHolder2.itemCryptoStatus;
        String str2 = recipient.address.address;
        MaterialTextView materialTextView3 = recipientTokenHolder2.itemAddress;
        materialTextView3.setText(str2);
        boolean isEmpty = TextUtils.isEmpty(recipient.addressLabel);
        MaterialTextView materialTextView4 = recipientTokenHolder2.itemAddressLabel;
        if (isEmpty) {
            materialTextView4.setVisibility(8);
        } else {
            materialTextView4.setText(recipient.addressLabel);
            materialTextView4.setVisibility(0);
        }
        int i3 = this.currentRecipient == recipient ? 1 : 0;
        materialTextView3.setTypeface(null, i3);
        materialTextView4.setTypeface(null, i3);
        view3.setOnClickListener(new MessageCompose$13$1(i2, this, recipient));
        recipientTokenHolder2.copyEmailAddress.setOnClickListener(new AlternateRecipientAdapter$$ExternalSyntheticLambda0(0, this));
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(recipient.cryptoStatus);
        if (ordinal == 0 || ordinal == 1) {
            imageView.setVisibility(8);
            return view;
        }
        if (ordinal != 2 && ordinal != 3) {
            return view;
        }
        imageView.setVisibility(0);
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i) {
        return i != 0;
    }
}
