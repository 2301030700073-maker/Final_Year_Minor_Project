package org.wikipedia.gallery;

import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ImageLicense {
    public static final Companion Companion = new Companion();
    public String licenseName;
    public String licenseShortName;
    public String licenseUrl;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ImageLicense$$serializer.INSTANCE;
        }
    }

    public final int licenseIcon() {
        String str = this.licenseShortName;
        String str2 = this.licenseName;
        return (StringsKt__StringsJVMKt.startsWith(str2, "pd", true) || StringsKt__StringsJVMKt.startsWith(str, "pd", true)) ? R.drawable.ic_license_pd : (StringsKt__StringsJVMKt.startsWith(StringsKt__StringsJVMKt.replace$default(str2, "-", ""), "ccbysa", true) || StringsKt__StringsJVMKt.startsWith(StringsKt__StringsJVMKt.replace$default(str, "-", ""), "ccbysa", true)) ? R.drawable.ic_license_by : (StringsKt__StringsJVMKt.startsWith(str2, "cc", true) || StringsKt__StringsJVMKt.startsWith(str, "cc", true)) ? R.drawable.ic_license_cc : R.drawable.ic_license_cite;
    }
}
