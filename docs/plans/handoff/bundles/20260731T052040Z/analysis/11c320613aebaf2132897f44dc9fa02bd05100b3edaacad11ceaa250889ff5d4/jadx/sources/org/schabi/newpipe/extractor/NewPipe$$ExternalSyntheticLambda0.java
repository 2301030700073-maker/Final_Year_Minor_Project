package org.schabi.newpipe.extractor;

import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import org.schabi.newpipe.settings.SettingsResourceRegistry;
import org.schabi.newpipe.settings.preferencesearch.PreferenceFuzzySearchFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class NewPipe$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;

    public /* synthetic */ NewPipe$$ExternalSyntheticLambda0(int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        int i = this.$r8$classId;
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i = this.$r8$classId;
        int i2 = this.f$0;
        switch (i) {
            case 0:
                return ((StreamingService) obj).serviceId == i2;
            case 1:
                return ((MediaFormat) obj).id == i2;
            case 2:
                return Integer.valueOf(((SettingsResourceRegistry.SettingRegistryEntry) obj).preferencesResId).equals(Integer.valueOf(i2));
            default:
                return ((PreferenceFuzzySearchFunction.FuzzySearchGeneralDTO) obj).score / ((float) i2) >= 0.3f;
        }
    }
}
