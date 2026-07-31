package com.fsck.k9.contacts;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.transition.Transition;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.fsck.k9.ui.account.AccountImageModelLoaderFactory;
import kotlin.io.CloseableKt;
import net.thunderbird.core.ui.account.AccountImage;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ContactPictureGlideModule extends Validate {
    @Override // org.jsoup.helper.Validate
    public final void registerComponents(Context context, Glide glide, Registry registry) {
        registry.append(ContactImage.class, ContactImage.class, new Transition.AnonymousClass1());
        ContactImageBitmapDecoderFactory contactImageBitmapDecoderFactory = (ContactImageBitmapDecoderFactory) CloseableKt.get$default(ContactImageBitmapDecoderFactory.class);
        BitmapPool bitmapPool = glide.bitmapPool;
        bitmapPool.getClass();
        registry.append("legacy_append", ContactImage.class, Bitmap.class, new ContactImageBitmapDecoder(contactImageBitmapDecoderFactory.contactPhotoLoader, bitmapPool));
        registry.append(AccountImage.class, Bitmap.class, (AccountImageModelLoaderFactory) CloseableKt.get$default(AccountImageModelLoaderFactory.class));
    }
}
