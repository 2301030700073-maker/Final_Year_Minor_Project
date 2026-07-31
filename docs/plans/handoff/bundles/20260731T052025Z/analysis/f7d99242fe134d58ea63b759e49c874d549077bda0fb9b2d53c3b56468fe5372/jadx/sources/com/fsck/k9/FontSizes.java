package com.fsck.k9;

import android.widget.TextView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FontSizes {
    public int messageListSubject = -1;
    public int messageListSender = -1;
    public int messageListDate = -1;
    public int messageListPreview = -1;
    public int messageViewAccountName = -1;
    public int messageViewSender = -1;
    public int messageViewRecipients = -1;
    public int messageViewSubject = -1;
    public int messageViewDate = -1;
    public int messageComposeInput = 18;
    public int messageViewContentAsPercent = 100;

    public static void setViewTextSize(TextView textView, int i) {
        textView.getClass();
        if (i != -1) {
            textView.setTextSize(2, i);
        }
    }
}
