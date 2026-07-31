package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import j$.time.LocalDate;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import okhttp3.Headers;
import org.wikipedia.R;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public class MwPostResponse extends MwResponse {
    public final String options;
    public final MwQueryPage pageInfo;
    public final int success;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(29)), null, null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return MwPostResponse$$serializer.INSTANCE;
        }
    }

    public MwPostResponse(int i, List list, String str, MwQueryPage mwQueryPage, String str2, int i2) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.pageInfo = null;
        } else {
            this.pageInfo = mwQueryPage;
        }
        if ((i & 8) == 0) {
            this.options = null;
        } else {
            this.options = str2;
        }
        if ((i & 16) == 0) {
            this.success = 0;
        } else {
            this.success = i2;
        }
        if (Headers.Companion.isTemporaryAccount()) {
            Prefs prefs = Prefs.INSTANCE;
            if (PrefsIoUtil.getLong(0L, R.string.preference_key_temp_account_create_day) == 0) {
                PrefsIoUtil.setLong(LocalDate.now().toEpochDay(), R.string.preference_key_temp_account_create_day);
            }
        }
    }

    public static final /* synthetic */ void write$Self(MwPostResponse mwPostResponse, UuidKt uuidKt, SerialDescriptor serialDescriptor) {
        MwResponse.write$Self(mwPostResponse, uuidKt, serialDescriptor);
        int i = mwPostResponse.success;
        String str = mwPostResponse.options;
        MwQueryPage mwQueryPage = mwPostResponse.pageInfo;
        if (uuidKt.shouldEncodeElementDefault(serialDescriptor) || mwQueryPage != null) {
            uuidKt.encodeNullableSerializableElement(serialDescriptor, 2, MwQueryPage$$serializer.INSTANCE, mwQueryPage);
        }
        if (uuidKt.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            uuidKt.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str);
        }
        if (!uuidKt.shouldEncodeElementDefault(serialDescriptor) && i == 0) {
            return;
        }
        uuidKt.encodeIntElement(4, i, serialDescriptor);
    }
}
