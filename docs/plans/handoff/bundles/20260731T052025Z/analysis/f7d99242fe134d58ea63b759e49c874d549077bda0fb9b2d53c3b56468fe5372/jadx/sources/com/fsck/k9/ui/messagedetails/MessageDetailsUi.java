package com.fsck.k9.ui.messagedetails;

import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageDetailsUi {
    public final ArrayList bcc;
    public final ArrayList cc;
    public final CryptoDetails cryptoDetails;
    public final String date;
    public final FolderInfoUi folder;
    public final ArrayList from;
    public final ArrayList replyTo;
    public final ArrayList sender;
    public final ArrayList to;

    public MessageDetailsUi(String str, CryptoDetails cryptoDetails, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, ArrayList arrayList6, FolderInfoUi folderInfoUi) {
        this.date = str;
        this.cryptoDetails = cryptoDetails;
        this.from = arrayList;
        this.sender = arrayList2;
        this.replyTo = arrayList3;
        this.to = arrayList4;
        this.cc = arrayList5;
        this.bcc = arrayList6;
        this.folder = folderInfoUi;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageDetailsUi)) {
            return false;
        }
        MessageDetailsUi messageDetailsUi = (MessageDetailsUi) obj;
        return Intrinsics.areEqual(this.date, messageDetailsUi.date) && Intrinsics.areEqual(this.cryptoDetails, messageDetailsUi.cryptoDetails) && this.from.equals(messageDetailsUi.from) && this.sender.equals(messageDetailsUi.sender) && this.replyTo.equals(messageDetailsUi.replyTo) && this.to.equals(messageDetailsUi.to) && this.cc.equals(messageDetailsUi.cc) && this.bcc.equals(messageDetailsUi.bcc) && Intrinsics.areEqual(this.folder, messageDetailsUi.folder);
    }

    public final int hashCode() {
        String str = this.date;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        CryptoDetails cryptoDetails = this.cryptoDetails;
        int m = Config.CC.m(this.bcc, Config.CC.m(this.cc, Config.CC.m(this.to, Config.CC.m(this.replyTo, Config.CC.m(this.sender, Config.CC.m(this.from, (hashCode + (cryptoDetails == null ? 0 : cryptoDetails.hashCode())) * 31, 31), 31), 31), 31), 31), 31);
        FolderInfoUi folderInfoUi = this.folder;
        return m + (folderInfoUi != null ? folderInfoUi.hashCode() : 0);
    }

    public final String toString() {
        return "MessageDetailsUi(date=" + this.date + ", cryptoDetails=" + this.cryptoDetails + ", from=" + this.from + ", sender=" + this.sender + ", replyTo=" + this.replyTo + ", to=" + this.to + ", cc=" + this.cc + ", bcc=" + this.bcc + ", folder=" + this.folder + ")";
    }
}
