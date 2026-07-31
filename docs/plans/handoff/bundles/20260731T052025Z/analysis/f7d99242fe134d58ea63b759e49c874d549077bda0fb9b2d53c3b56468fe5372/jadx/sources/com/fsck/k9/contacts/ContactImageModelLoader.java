package com.fsck.k9.contacts;

import androidx.camera.core.impl.Config;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.ModelLoader;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContactImageModelLoader implements ModelLoader {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ContactImageModelLoader(int i) {
        this.$r8$classId = i;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData buildLoadData(Object obj, int i, int i2, Options options) {
        switch (this.$r8$classId) {
            case 0:
                ContactImage contactImage = (ContactImage) obj;
                contactImage.getClass();
                options.getClass();
                return new ModelLoader.LoadData(contactImage, new ContactImageDataFetcher(contactImage));
            default:
                throw Config.CC.m(obj);
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean handles(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((ContactImage) obj).getClass();
                return true;
            default:
                throw Config.CC.m(obj);
        }
    }
}
