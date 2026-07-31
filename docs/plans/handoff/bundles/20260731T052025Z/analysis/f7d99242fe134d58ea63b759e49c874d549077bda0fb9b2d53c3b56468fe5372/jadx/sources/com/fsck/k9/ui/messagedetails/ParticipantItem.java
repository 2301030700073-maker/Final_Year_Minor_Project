package com.fsck.k9.ui.messagedetails;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import com.fsck.k9.R;
import com.fsck.k9.contacts.ContactPictureLoader;
import com.google.android.material.textview.MaterialTextView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParticipantItem extends AbstractItem {
    public final boolean alwaysHideAddContactsButton;
    public final ContactPictureLoader contactPictureLoader;
    public final Participant participant;
    public final boolean showContactsPicture;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ViewHolder extends FastAdapter.ViewHolder {
        public final ImageView contactPicture;
        public final MaterialTextView email;
        public final View menuAddContact;
        public final View menuOverflow;
        public final MaterialTextView name;
        public final Drawable originalBackground;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View view) {
            super(view);
            view.getClass();
            View findViewById = view.findViewById(R.id.menu_add_contact);
            findViewById.getClass();
            this.menuAddContact = findViewById;
            View findViewById2 = view.findViewById(R.id.menu_overflow);
            findViewById2.getClass();
            this.menuOverflow = findViewById2;
            View findViewById3 = view.findViewById(R.id.contact_picture);
            findViewById3.getClass();
            this.contactPicture = (ImageView) findViewById3;
            this.name = (MaterialTextView) view.findViewById(R.id.name);
            this.email = (MaterialTextView) view.findViewById(R.id.email);
            this.originalBackground = view.getBackground();
            Operation$State.setTooltipText(findViewById, findViewById.getContentDescription());
            Operation$State.setTooltipText(findViewById2, findViewById2.getContentDescription());
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void bindView(AbstractItem abstractItem, List list) {
            ParticipantItem participantItem = (ParticipantItem) abstractItem;
            list.getClass();
            Participant participant = participantItem.participant;
            CharSequence charSequence = participant.displayName;
            Uri uri = participant.contactLookupUri;
            MaterialTextView materialTextView = this.name;
            if (charSequence != null) {
                materialTextView.setText(charSequence);
                materialTextView.setVisibility(0);
            } else {
                materialTextView.getClass();
                materialTextView.setVisibility(8);
            }
            this.email.setText(participant.emailAddress);
            this.menuAddContact.setVisibility((participantItem.alwaysHideAddContactsButton || uri != null) ? 8 : 0);
            boolean z = participantItem.showContactsPicture;
            ImageView imageView = this.contactPicture;
            if (z) {
                imageView.setVisibility(0);
                participantItem.contactPictureLoader.setContactPicture(imageView, participant.getAddress());
            } else {
                imageView.setVisibility(8);
            }
            View view = this.itemView;
            if (uri != null) {
                view.setClickable(true);
                view.setBackground(this.originalBackground);
            } else {
                view.setClickable(false);
                view.setBackground(null);
            }
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void unbindView(AbstractItem abstractItem) {
            this.name.setText((CharSequence) null);
            this.email.setText((CharSequence) null);
        }
    }

    public ParticipantItem(ContactPictureLoader contactPictureLoader, boolean z, boolean z2, Participant participant) {
        contactPictureLoader.getClass();
        participant.getClass();
        this.contactPictureLoader = contactPictureLoader;
        this.showContactsPicture = z;
        this.alwaysHideAddContactsButton = z2;
        this.participant = participant;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getLayoutRes() {
        return R.layout.message_details_participant_item;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getType() {
        return R.id.message_details_participant;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final RecyclerView.ViewHolder getViewHolder(View view) {
        view.getClass();
        return new ViewHolder(view);
    }
}
