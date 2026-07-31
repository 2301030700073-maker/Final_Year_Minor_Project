package com.fsck.k9.mailstore;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.fsck.k9.mail.Address;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageDetails {
    public final List bcc;
    public final List cc;
    public final MessageDate date;
    public final List from;
    public final List replyTo;
    public final Address sender;
    public final List to;

    public MessageDetails(MessageDate messageDate, List list, Address address, List list2, List list3, List list4, List list5) {
        this.date = messageDate;
        this.from = list;
        this.sender = address;
        this.replyTo = list2;
        this.to = list3;
        this.cc = list4;
        this.bcc = list5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageDetails)) {
            return false;
        }
        MessageDetails messageDetails = (MessageDetails) obj;
        return this.date.equals(messageDetails.date) && this.from.equals(messageDetails.from) && Intrinsics.areEqual(this.sender, messageDetails.sender) && this.replyTo.equals(messageDetails.replyTo) && this.to.equals(messageDetails.to) && this.cc.equals(messageDetails.cc) && this.bcc.equals(messageDetails.bcc);
    }

    public final int hashCode() {
        int m = CameraDevices$CC.m(this.from, this.date.hashCode() * 31, 31);
        Address address = this.sender;
        return this.bcc.hashCode() + CameraDevices$CC.m(this.cc, CameraDevices$CC.m(this.to, CameraDevices$CC.m(this.replyTo, (m + (address == null ? 0 : address.hashCode())) * 31, 31), 31), 31);
    }

    public final String toString() {
        return "MessageDetails(date=" + this.date + ", from=" + this.from + ", sender=" + this.sender + ", replyTo=" + this.replyTo + ", to=" + this.to + ", cc=" + this.cc + ", bcc=" + this.bcc + ")";
    }
}
