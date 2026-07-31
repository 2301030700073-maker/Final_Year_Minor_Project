package com.fsck.k9.ui.messagelist.item;

import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import com.fsck.k9.R;
import com.fsck.k9.contacts.ContactPictureLoader;
import com.google.android.material.textview.MaterialTextView;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageViewHolder extends MessageListViewHolder {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Function0 appearance;
    public final ImageView attachmentView;
    public final ImageView chipView;
    public final MessageViewHolderColors colors;
    public final View contactPictureClickArea;
    public final ImageView contactPictureView;
    public final ContactPictureLoader contactsPictureLoader;
    public final MaterialTextView dateView;
    public final MaterialTextView previewView;
    public final Resources res;
    public final View selectedView;
    public final View starClickAreaView;
    public final ImageView starView;
    public final ImageView statusView;
    public final MaterialTextView subjectView;
    public final Resources.Theme theme;
    public final MaterialTextView threadCountView;
    public long uniqueId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageViewHolder(View view, LockFreeLinkedListNode$toString$1 lockFreeLinkedListNode$toString$1, Resources.Theme theme, Resources resources, ContactPictureLoader contactPictureLoader, MessageViewHolderColors messageViewHolderColors) {
        super(view);
        lockFreeLinkedListNode$toString$1.getClass();
        theme.getClass();
        resources.getClass();
        contactPictureLoader.getClass();
        messageViewHolderColors.getClass();
        this.appearance = lockFreeLinkedListNode$toString$1;
        this.theme = theme;
        this.res = resources;
        this.contactsPictureLoader = contactPictureLoader;
        this.colors = messageViewHolderColors;
        this.uniqueId = -1L;
        View findViewById = view.findViewById(R.id.selected);
        findViewById.getClass();
        this.selectedView = findViewById;
        View findViewById2 = view.findViewById(R.id.contact_picture);
        findViewById2.getClass();
        this.contactPictureView = (ImageView) findViewById2;
        View findViewById3 = view.findViewById(R.id.contact_picture_click_area);
        findViewById3.getClass();
        this.contactPictureClickArea = findViewById3;
        View findViewById4 = view.findViewById(R.id.subject);
        findViewById4.getClass();
        this.subjectView = (MaterialTextView) findViewById4;
        View findViewById5 = view.findViewById(R.id.preview);
        findViewById5.getClass();
        this.previewView = (MaterialTextView) findViewById5;
        View findViewById6 = view.findViewById(R.id.date);
        findViewById6.getClass();
        this.dateView = (MaterialTextView) findViewById6;
        View findViewById7 = view.findViewById(R.id.account_color_chip);
        findViewById7.getClass();
        this.chipView = (ImageView) findViewById7;
        View findViewById8 = view.findViewById(R.id.thread_count);
        findViewById8.getClass();
        this.threadCountView = (MaterialTextView) findViewById8;
        View findViewById9 = view.findViewById(R.id.star);
        findViewById9.getClass();
        this.starView = (ImageView) findViewById9;
        View findViewById10 = view.findViewById(R.id.star_click_area);
        findViewById10.getClass();
        this.starClickAreaView = findViewById10;
        View findViewById11 = view.findViewById(R.id.attachment);
        findViewById11.getClass();
        this.attachmentView = (ImageView) findViewById11;
        View findViewById12 = view.findViewById(R.id.status);
        findViewById12.getClass();
        this.statusView = (ImageView) findViewById12;
    }
}
