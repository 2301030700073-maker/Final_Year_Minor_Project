package net.thunderbird.core.featureflag;

import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function0;
import kotlinx.io.Sink$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface FeatureFlagResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Enabled implements FeatureFlagResult {
        public static final Enabled INSTANCE = new Enabled();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Enabled);
        }

        public final int hashCode() {
            return 914035225;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final boolean isDisabled() {
            return false;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final boolean isDisabledOrUnavailable() {
            return false;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final boolean isEnabled() {
            return true;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final /* bridge */ FeatureFlagResult onDisabledOrUnavailable(K9$$ExternalSyntheticLambda0 k9$$ExternalSyntheticLambda0) {
            Sink$CC.$default$onDisabledOrUnavailable(this, k9$$ExternalSyntheticLambda0);
            return this;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final FeatureFlagResult onEnabled(Function0 function0) {
            function0.invoke();
            return this;
        }

        public final String toString() {
            return "Enabled";
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final /* bridge */ Object whenEnabledOrNot(Function0 function0, Function0 function02) {
            return Sink$CC.$default$whenEnabledOrNot(this, function0, function02);
        }
    }

    boolean isDisabled();

    boolean isDisabledOrUnavailable();

    boolean isEnabled();

    FeatureFlagResult onDisabledOrUnavailable(K9$$ExternalSyntheticLambda0 k9$$ExternalSyntheticLambda0);

    FeatureFlagResult onEnabled(Function0 function0);

    Object whenEnabledOrNot(Function0 function0, Function0 function02);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Disabled implements FeatureFlagResult {
        public static final Disabled INSTANCE = new Disabled();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Disabled);
        }

        public final int hashCode() {
            return 1194036900;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final boolean isDisabled() {
            return true;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final boolean isDisabledOrUnavailable() {
            return true;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final boolean isEnabled() {
            return false;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final /* bridge */ FeatureFlagResult onDisabledOrUnavailable(K9$$ExternalSyntheticLambda0 k9$$ExternalSyntheticLambda0) {
            Sink$CC.$default$onDisabledOrUnavailable(this, k9$$ExternalSyntheticLambda0);
            return this;
        }

        public final String toString() {
            return "Disabled";
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final /* bridge */ Object whenEnabledOrNot(Function0 function0, Function0 function02) {
            return Sink$CC.$default$whenEnabledOrNot(this, function0, function02);
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final FeatureFlagResult onEnabled(Function0 function0) {
            return this;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Unavailable implements FeatureFlagResult {
        public static final Unavailable INSTANCE = new Unavailable();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Unavailable);
        }

        public final int hashCode() {
            return -1385024728;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final boolean isDisabled() {
            return false;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final boolean isDisabledOrUnavailable() {
            return true;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final boolean isEnabled() {
            return false;
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final /* bridge */ FeatureFlagResult onDisabledOrUnavailable(K9$$ExternalSyntheticLambda0 k9$$ExternalSyntheticLambda0) {
            Sink$CC.$default$onDisabledOrUnavailable(this, k9$$ExternalSyntheticLambda0);
            return this;
        }

        public final String toString() {
            return "Unavailable";
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final /* bridge */ Object whenEnabledOrNot(Function0 function0, Function0 function02) {
            return Sink$CC.$default$whenEnabledOrNot(this, function0, function02);
        }

        @Override // net.thunderbird.core.featureflag.FeatureFlagResult
        public final FeatureFlagResult onEnabled(Function0 function0) {
            return this;
        }
    }
}
