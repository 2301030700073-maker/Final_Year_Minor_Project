package com.fsck.k9.contacts;

import androidx.compose.ui.Modifier;
import com.bumptech.glide.load.Key;
import com.fsck.k9.mail.Address;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContactImage implements Key {
    public final Address address;
    public final String backgroundCacheId;
    public final ContactLetterBitmapCreator contactLetterBitmapCreator;
    public final boolean contactLetterOnly;
    public final String contactLetterSignature;

    public ContactImage(boolean z, String str, ContactLetterBitmapCreator contactLetterBitmapCreator, Address address) {
        str.getClass();
        address.getClass();
        this.contactLetterOnly = z;
        this.backgroundCacheId = str;
        this.contactLetterBitmapCreator = contactLetterBitmapCreator;
        this.address = address;
        this.contactLetterSignature = String.valueOf(contactLetterBitmapCreator.calcUnknownContactColor(address));
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!ContactImage.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        ContactImage contactImage = (ContactImage) obj;
        return this.contactLetterOnly == contactImage.contactLetterOnly && Intrinsics.areEqual(this.backgroundCacheId, contactImage.backgroundCacheId) && Intrinsics.areEqual(this.address, contactImage.address) && Intrinsics.areEqual(this.contactLetterSignature, contactImage.contactLetterSignature);
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.contactLetterSignature.hashCode() + ((this.address.hashCode() + Modifier.CC.m((this.contactLetterOnly ? 1231 : 1237) * 31, this.backgroundCacheId, 31)) * 31);
    }

    public final String toString() {
        return "ContactImage(contactLetterOnly=" + this.contactLetterOnly + ", backgroundCacheId='" + this.backgroundCacheId + "', address=" + this.address + ", contactLetterSignature='" + this.contactLetterSignature + "')";
    }

    @Override // com.bumptech.glide.load.Key
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.getClass();
        String contactImage = toString();
        Charset charset = Key.CHARSET;
        charset.getClass();
        byte[] bytes = contactImage.getBytes(charset);
        bytes.getClass();
        messageDigest.update(bytes);
    }
}
