package com.fsck.k9.ui.messagelist;

import android.os.Parcel;
import android.os.Parcelable;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.FontSizes;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.preference.display.visualSettings.message.list.MessageListDateTimeFormat;
import net.thunderbird.core.preference.display.visualSettings.message.list.UiDensity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListAppearance implements Parcelable {
    public static final Parcelable.Creator<MessageListAppearance> CREATOR = new Creator();
    public final boolean backGroundAsReadIndicator;
    public final MessageListDateTimeFormat dateTimeFormat;
    public final UiDensity density;
    public final FontSizes fontSizes;
    public final int previewLines;
    public final boolean senderAboveSubject;
    public final boolean showAccountIndicator;
    public final boolean showContactPicture;
    public final boolean showingThreadedList;
    public final boolean stars;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            boolean z;
            parcel.getClass();
            int readInt = parcel.readInt();
            boolean z2 = true;
            if (parcel.readInt() != 0) {
                z = true;
            } else {
                z = true;
                z2 = false;
            }
            return new MessageListAppearance(new FontSizes(), readInt, z2, parcel.readInt() != 0 ? z : false, parcel.readInt() != 0 ? z : false, parcel.readInt() != 0 ? z : false, parcel.readInt() != 0 ? z : false, parcel.readInt() != 0 ? z : false, UiDensity.valueOf(parcel.readString()), MessageListDateTimeFormat.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new MessageListAppearance[i];
        }
    }

    public MessageListAppearance(FontSizes fontSizes, int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, UiDensity uiDensity, MessageListDateTimeFormat messageListDateTimeFormat) {
        fontSizes.getClass();
        uiDensity.getClass();
        messageListDateTimeFormat.getClass();
        this.fontSizes = fontSizes;
        this.previewLines = i;
        this.stars = z;
        this.senderAboveSubject = z2;
        this.showContactPicture = z3;
        this.showingThreadedList = z4;
        this.backGroundAsReadIndicator = z5;
        this.showAccountIndicator = z6;
        this.density = uiDensity;
        this.dateTimeFormat = messageListDateTimeFormat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageListAppearance)) {
            return false;
        }
        MessageListAppearance messageListAppearance = (MessageListAppearance) obj;
        return Intrinsics.areEqual(this.fontSizes, messageListAppearance.fontSizes) && this.previewLines == messageListAppearance.previewLines && this.stars == messageListAppearance.stars && this.senderAboveSubject == messageListAppearance.senderAboveSubject && this.showContactPicture == messageListAppearance.showContactPicture && this.showingThreadedList == messageListAppearance.showingThreadedList && this.backGroundAsReadIndicator == messageListAppearance.backGroundAsReadIndicator && this.showAccountIndicator == messageListAppearance.showAccountIndicator && this.density == messageListAppearance.density && this.dateTimeFormat == messageListAppearance.dateTimeFormat;
    }

    public final int hashCode() {
        int hashCode = ((((((((((((this.fontSizes.hashCode() * 31) + this.previewLines) * 31) + (this.stars ? 1231 : 1237)) * 31) + (this.senderAboveSubject ? 1231 : 1237)) * 31) + (this.showContactPicture ? 1231 : 1237)) * 31) + (this.showingThreadedList ? 1231 : 1237)) * 31) + (this.backGroundAsReadIndicator ? 1231 : 1237)) * 31;
        int i = this.showAccountIndicator ? 1231 : 1237;
        return this.dateTimeFormat.hashCode() + ((this.density.hashCode() + ((hashCode + i) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MessageListAppearance(fontSizes=");
        sb.append(this.fontSizes);
        sb.append(", previewLines=");
        sb.append(this.previewLines);
        sb.append(", stars=");
        ViewSizeResolver.CC.m(sb, this.stars, ", senderAboveSubject=", this.senderAboveSubject, ", showContactPicture=");
        ViewSizeResolver.CC.m(sb, this.showContactPicture, ", showingThreadedList=", this.showingThreadedList, ", backGroundAsReadIndicator=");
        ViewSizeResolver.CC.m(sb, this.backGroundAsReadIndicator, ", showAccountIndicator=", this.showAccountIndicator, ", density=");
        sb.append(this.density);
        sb.append(", dateTimeFormat=");
        sb.append(this.dateTimeFormat);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeInt(this.previewLines);
        parcel.writeInt(this.stars ? 1 : 0);
        parcel.writeInt(this.senderAboveSubject ? 1 : 0);
        parcel.writeInt(this.showContactPicture ? 1 : 0);
        parcel.writeInt(this.showingThreadedList ? 1 : 0);
        parcel.writeInt(this.backGroundAsReadIndicator ? 1 : 0);
        parcel.writeInt(this.showAccountIndicator ? 1 : 0);
        parcel.writeString(this.density.name());
        parcel.writeString(this.dateTimeFormat.name());
    }
}
