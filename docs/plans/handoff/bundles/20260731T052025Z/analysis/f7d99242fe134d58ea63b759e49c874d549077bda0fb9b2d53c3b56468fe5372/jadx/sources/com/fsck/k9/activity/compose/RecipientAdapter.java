package com.fsck.k9.activity.compose;

import android.content.Context;
import android.net.Uri;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.cursoradapter.widget.CursorFilter;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy$2;
import com.fsck.k9.R;
import com.fsck.k9.contacts.ContactImage;
import com.fsck.k9.contacts.ContactPictureLoader;
import com.fsck.k9.mail.Address;
import com.fsck.k9.view.RecipientSelectView;
import com.google.android.material.textview.MaterialTextView;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.io.CloseableKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RecipientAdapter extends BaseAdapter implements Filterable {
    public final Context context;
    public String highlight;
    public List recipients;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RecipientTokenHolder {
        public final ImageView cryptoStatus;
        public final MaterialTextView email;
        public final MaterialTextView name;
        public final ImageView photo;

        public RecipientTokenHolder(View view) {
            this.name = (MaterialTextView) view.findViewById(R.id.text1);
            this.email = (MaterialTextView) view.findViewById(R.id.text2);
            this.photo = (ImageView) view.findViewById(R.id.contact_photo);
            this.cryptoStatus = (ImageView) view.findViewById(R.id.contact_crypto_status_icon);
        }
    }

    public RecipientAdapter(Context context) {
        this.context = context;
    }

    public static void setContactPhotoOrPlaceholder(ImageView imageView, RecipientSelectView.Recipient recipient) {
        ContactPictureLoader contactPictureLoader = (ContactPictureLoader) CloseableKt.get$default(ContactPictureLoader.class);
        imageView.getClass();
        recipient.getClass();
        Uri uri = recipient.photoThumbnailUri;
        DiskCacheStrategy$2 diskCacheStrategy$2 = DiskCacheStrategy$2.NONE;
        if (uri != null) {
            ((RequestBuilder) ((RequestBuilder) ((RequestBuilder) ((RequestBuilder) Glide.with(imageView.getContext()).load(uri).placeholder()).error()).diskCacheStrategy(diskCacheStrategy$2)).dontAnimate()).into(imageView);
            return;
        }
        Address address = recipient.address;
        address.getClass();
        ((RequestBuilder) ((RequestBuilder) Glide.with(imageView.getContext()).load(new ContactImage(true, contactPictureLoader.backgroundCacheId, contactPictureLoader.contactLetterBitmapCreator, address)).diskCacheStrategy(diskCacheStrategy$2)).dontAnimate()).into(imageView);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        List list = this.recipients;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        return new CursorFilter(this);
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        List list = this.recipients;
        if (list == null) {
            return null;
        }
        return (RecipientSelectView.Recipient) list.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        Context context = this.context;
        if (view == null) {
            view = LayoutInflater.from(context).inflate(R.layout.recipient_dropdown_item, viewGroup, false);
            view.setTag(new RecipientTokenHolder(view));
        }
        List list = this.recipients;
        RecipientSelectView.Recipient recipient = list == null ? null : (RecipientSelectView.Recipient) list.get(i);
        RecipientTokenHolder recipientTokenHolder = (RecipientTokenHolder) view.getTag();
        MaterialTextView materialTextView = recipientTokenHolder.name;
        ImageView imageView = recipientTokenHolder.cryptoStatus;
        String str = TextUtils.isEmpty(recipient.address.personal) ? null : recipient.address.personal;
        if (str == null) {
            str = context.getString(R.string.unknown_recipient);
        }
        materialTextView.setText(highlightText(str));
        recipientTokenHolder.email.setText(highlightText(recipient.address.address));
        setContactPhotoOrPlaceholder(recipientTokenHolder.photo, recipient);
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(recipient.cryptoStatus);
        if (ordinal == 1) {
            imageView.setVisibility(8);
            return view;
        }
        if (ordinal != 2 && ordinal != 3) {
            return view;
        }
        imageView.setVisibility(0);
        return view;
    }

    public final Spannable highlightText(String str) {
        Spannable newSpannable = Spannable.Factory.getInstance().newSpannable(str);
        String str2 = this.highlight;
        if (str2 != null) {
            Matcher matcher = Pattern.compile(str2, 18).matcher(str);
            while (matcher.find()) {
                newSpannable.setSpan(new ForegroundColorSpan(this.context.getResources().getColor(android.R.color.holo_blue_light)), matcher.start(), matcher.end(), 33);
            }
        }
        return newSpannable;
    }
}
