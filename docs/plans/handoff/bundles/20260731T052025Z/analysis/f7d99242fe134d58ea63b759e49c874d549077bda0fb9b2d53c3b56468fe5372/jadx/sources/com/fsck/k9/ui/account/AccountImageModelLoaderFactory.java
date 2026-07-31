package com.fsck.k9.ui.account;

import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.fsck.k9.contacts.ContactImageModelLoader;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountImageModelLoaderFactory implements ModelLoaderFactory {
    @Override // com.bumptech.glide.load.model.ModelLoaderFactory
    public final ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
        return new ContactImageModelLoader(1);
    }
}
