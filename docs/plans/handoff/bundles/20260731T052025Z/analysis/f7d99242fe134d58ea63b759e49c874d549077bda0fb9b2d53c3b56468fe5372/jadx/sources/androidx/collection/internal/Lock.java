package androidx.collection.internal;

import android.os.Bundle;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.SessionConfig;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavContext;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidatePassword$ValidatePasswordError$EmptyPassword;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.load.model.StringLoader;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.util.pool.FactoryPools;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeBodyPart;
import j$.util.DesugarCollections;
import java.io.InputStream;
import java.util.Iterator;
import java.util.UUID;
import kotlin.coroutines.CoroutineContext;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import net.thunderbird.core.outcome.Outcome;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.ByteString;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Lock implements FeatureCombinationQuery, CoroutineContext.Key, ModelLoaderFactory, Lifecycle, FactoryPools.Resetter {
    public static final String access$binarySearch(ByteString byteString, ByteString[] byteStringArr, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        ByteString byteString2 = PublicSuffixDatabase.WILDCARD_LABEL;
        int size$okio = byteString.getSize$okio();
        int i5 = 0;
        while (i5 < size$okio) {
            int i6 = (i5 + size$okio) / 2;
            while (i6 > -1 && byteString.internalGet$okio(i6) != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (byteString.internalGet$okio(i2) == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z2 = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z2) {
                    i3 = 46;
                    z = false;
                } else {
                    byte internalGet$okio = byteStringArr[i10].internalGet$okio(i11);
                    byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
                    int i13 = internalGet$okio & 255;
                    z = z2;
                    i3 = i13;
                }
                byte internalGet$okio2 = byteString.internalGet$okio(i7 + i12);
                byte[] bArr2 = _UtilCommonKt.EMPTY_BYTE_ARRAY;
                i4 = i3 - (internalGet$okio2 & 255);
                if (i4 != 0) {
                    break;
                }
                i12++;
                i11++;
                if (i12 == i9) {
                    break;
                }
                if (byteStringArr[i10].getSize$okio() != i11) {
                    z2 = z;
                } else {
                    if (i10 == byteStringArr.length - 1) {
                        break;
                    }
                    i10++;
                    i11 = -1;
                    z2 = true;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i14 = i9 - i12;
                    int size$okio2 = byteStringArr[i10].getSize$okio() - i11;
                    int length = byteStringArr.length;
                    for (int i15 = i10 + 1; i15 < length; i15++) {
                        size$okio2 += byteStringArr[i15].getSize$okio();
                    }
                    if (size$okio2 >= i14) {
                        if (size$okio2 <= i14) {
                            return byteString.substring(i7, i9 + i7).string(Charsets.UTF_8);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            size$okio = i6;
        }
        return null;
    }

    public static boolean containsPartWithMimeType(Part part, String... strArr) {
        String mimeType = part.getMimeType();
        for (String str : strArr) {
            if (JisSupport.isSameMimeType(mimeType, str)) {
                return true;
            }
        }
        Body body = part.getBody();
        if (body instanceof Multipart) {
            Iterator it = DesugarCollections.unmodifiableList(((Multipart) body).mParts).iterator();
            while (it.hasNext()) {
                if (containsPartWithMimeType((MimeBodyPart) it.next(), strArr)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static NavBackStackEntry create$default(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavControllerViewModel navControllerViewModel) {
        String uuid = UUID.randomUUID().toString();
        uuid.getClass();
        navDestination.getClass();
        state.getClass();
        return new NavBackStackEntry(navContext, navDestination, bundle, state, navControllerViewModel, uuid, null);
    }

    public static Outcome execute(String str) {
        str.getClass();
        return StringsKt.isBlank(str) ? new Outcome.Failure(ValidatePassword$ValidatePasswordError$EmptyPassword.INSTANCE, null) : Hex.getValidationSuccess();
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void addListener(LifecycleListener lifecycleListener) {
        lifecycleListener.onStart();
    }

    @Override // com.bumptech.glide.load.model.ModelLoaderFactory
    public ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
        return new StringLoader(multiModelLoaderFactory.build(GlideUrl.class, InputStream.class), 1);
    }

    @Override // androidx.camera.core.featuregroup.impl.FeatureCombinationQuery
    public boolean isSupported(SessionConfig sessionConfig) {
        return false;
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void removeListener(LifecycleListener lifecycleListener) {
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
    public void reset(Object obj) {
    }
}
