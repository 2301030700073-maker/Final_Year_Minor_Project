package app.k9mail.autodiscovery.autoconfig;

import app.k9mail.autodiscovery.api.AutoDiscovery;
import app.k9mail.autodiscovery.api.AutoDiscoveryRunnable;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.Preferences$getAccountFlow$1;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import net.thunderbird.core.common.mail.EmailAddress;
import net.thunderbird.core.common.net.Domain;
import okhttp3.HttpUrl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoconfigDiscovery implements AutoDiscovery {
    public final Base64Util autoconfigFetcher;
    public final AutoconfigUrlProvider urlProvider;

    public AutoconfigDiscovery(AutoconfigUrlProvider autoconfigUrlProvider, Base64Util base64Util) {
        this.urlProvider = autoconfigUrlProvider;
        this.autoconfigFetcher = base64Util;
    }

    @Override // app.k9mail.autodiscovery.api.AutoDiscovery
    public final List initDiscovery(final EmailAddress emailAddress) {
        String str = emailAddress.domain.value;
        Domain.m1026constructorimpl(str);
        List<HttpUrl> mo822getAutoconfigUrlss1GoCZM = this.urlProvider.mo822getAutoconfigUrlss1GoCZM(str, emailAddress);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(mo822getAutoconfigUrlss1GoCZM, 10));
        for (final HttpUrl httpUrl : mo822getAutoconfigUrlss1GoCZM) {
            arrayList.add(new AutoDiscoveryRunnable() { // from class: app.k9mail.autodiscovery.autoconfig.AutoconfigDiscovery$initDiscovery$1$1
                @Override // app.k9mail.autodiscovery.api.AutoDiscoveryRunnable
                public final Object run(Preferences$getAccountFlow$1 preferences$getAccountFlow$1) {
                    return AutoconfigDiscovery.this.autoconfigFetcher.fetchAutoconfig(httpUrl, emailAddress, preferences$getAccountFlow$1);
                }
            });
        }
        return arrayList;
    }
}
