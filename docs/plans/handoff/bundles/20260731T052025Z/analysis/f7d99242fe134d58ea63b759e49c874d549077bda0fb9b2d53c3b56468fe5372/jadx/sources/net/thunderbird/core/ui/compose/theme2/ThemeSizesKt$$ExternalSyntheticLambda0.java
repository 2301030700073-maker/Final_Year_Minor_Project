package net.thunderbird.core.ui.compose.theme2;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlinx.io.Sink$CC;
import kotlinx.serialization.internal.EnumSerializer;
import net.thunderbird.feature.debug.settings.navigation.SecretDebugSettingsRoute;
import okhttp3.Headers;
import org.jetbrains.compose.resources.DrawableResource;
import org.jetbrains.compose.resources.LanguageQualifier;
import org.jetbrains.compose.resources.Qualifier;
import org.jetbrains.compose.resources.RegionQualifier;
import org.jetbrains.compose.resources.ResourceItem;
import org.jetbrains.compose.resources.StringResource;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ThemeSizesKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    private final Object invoke$net$thunderbird$core$ui$designsystem$resources$String0_commonMainKt$$ExternalSyntheticLambda2() {
        return new StringResource("string:designsystem_atom_password_textfield_show_password", ArraysKt___ArraysKt.toSet(new ResourceItem[]{new ResourceItem(Sink$CC.m("ar"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ar/strings.commonMain.cvr", 113L, 98L), new ResourceItem(Sink$CC.m("be"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-be/strings.commonMain.cvr", 105L, 98L), new ResourceItem(Sink$CC.m("bg"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bg/strings.commonMain.cvr", 121L, 114L), new ResourceItem(Sink$CC.m("bn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bn/strings.commonMain.cvr", 129L, 118L), new ResourceItem(Sink$CC.m("br"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-br/strings.commonMain.cvr", 93L, 90L), new ResourceItem(Sink$CC.m("bs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bs/strings.commonMain.cvr", 89L, 82L), new ResourceItem(Sink$CC.m("ca"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ca/strings.commonMain.cvr", 97L, 86L), new ResourceItem(Sink$CC.m("co"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-co/strings.commonMain.cvr", 109L, 98L), new ResourceItem(Sink$CC.m("cs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cs/strings.commonMain.cvr", 85L, 78L), new ResourceItem(Sink$CC.m("cy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cy/strings.commonMain.cvr", 93L, 82L), new ResourceItem(Sink$CC.m("da"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-da/strings.commonMain.cvr", 89L, 74L), new ResourceItem(Sink$CC.m("de"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-de/strings.commonMain.cvr", 97L, 82L), new ResourceItem(Sink$CC.m("el"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-el/strings.commonMain.cvr", 137L, 126L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("en"), new RegionQualifier("GB")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-en-rGB/strings.commonMain.cvr", 89L, 78L), new ResourceItem(Sink$CC.m("eo"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-eo/strings.commonMain.cvr", 89L, 82L), new ResourceItem(Sink$CC.m("es"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-es/strings.commonMain.cvr", 97L, 86L), new ResourceItem(Sink$CC.m("et"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-et/strings.commonMain.cvr", 89L, 82L), new ResourceItem(Sink$CC.m("eu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-eu/strings.commonMain.cvr", 93L, 82L), new ResourceItem(Sink$CC.m("fa"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fa/strings.commonMain.cvr", 113L, 102L), new ResourceItem(Sink$CC.m("fi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fi/strings.commonMain.cvr", 93L, 82L), new ResourceItem(Sink$CC.m("fr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fr/strings.commonMain.cvr", 101L, 90L), new ResourceItem(Sink$CC.m("fy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fy/strings.commonMain.cvr", 97L, 78L), new ResourceItem(Sink$CC.m("ga"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ga/strings.commonMain.cvr", 93L, 86L), new ResourceItem(Sink$CC.m("gd"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-gd/strings.commonMain.cvr", 101L, 86L), new ResourceItem(Sink$CC.m("gl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-gl/strings.commonMain.cvr", 97L, 82L), new ResourceItem(Sink$CC.m("hi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hi/strings.commonMain.cvr", 125L, 114L), new ResourceItem(Sink$CC.m("hr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hr/strings.commonMain.cvr", 89L, 82L), new ResourceItem(Sink$CC.m("hu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hu/strings.commonMain.cvr", 93L, 90L), new ResourceItem(Sink$CC.m("in"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-in/strings.commonMain.cvr", 101L, 86L), new ResourceItem(Sink$CC.m("is"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-is/strings.commonMain.cvr", 89L, 78L), new ResourceItem(Sink$CC.m("it"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-it/strings.commonMain.cvr", 93L, 78L), new ResourceItem(Sink$CC.m("iw"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-iw/strings.commonMain.cvr", 97L, 82L), new ResourceItem(Sink$CC.m("ja"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ja/strings.commonMain.cvr", 105L, 90L), new ResourceItem(Sink$CC.m("kk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-kk/strings.commonMain.cvr", 109L, 102L), new ResourceItem(Sink$CC.m("ko"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ko/strings.commonMain.cvr", 101L, 86L), new ResourceItem(Sink$CC.m("lt"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-lt/strings.commonMain.cvr", 101L, 86L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("nb"), new RegionQualifier("NO")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nb-rNO/strings.commonMain.cvr", 89L, 74L), new ResourceItem(Sink$CC.m("nl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nl/strings.commonMain.cvr", 97L, 82L), new ResourceItem(Sink$CC.m("nn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nn/strings.commonMain.cvr", 89L, 74L), new ResourceItem(Sink$CC.m("pl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pl/strings.commonMain.cvr", 85L, 78L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("BR")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rBR/strings.commonMain.cvr", 89L, 78L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("PT")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rPT/strings.commonMain.cvr", 101L, 86L), new ResourceItem(Sink$CC.m("ro"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ro/strings.commonMain.cvr", 89L, 78L), new ResourceItem(Sink$CC.m("ru"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ru/strings.commonMain.cvr", 105L, 98L), new ResourceItem(Sink$CC.m("sk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sk/strings.commonMain.cvr", 85L, 78L), new ResourceItem(Sink$CC.m("sl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sl/strings.commonMain.cvr", 85L, 78L), new ResourceItem(Sink$CC.m("sq"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sq/strings.commonMain.cvr", 97L, 86L), new ResourceItem(Sink$CC.m("sr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sr/strings.commonMain.cvr", 105L, 98L), new ResourceItem(Sink$CC.m("sv"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sv/strings.commonMain.cvr", 89L, 78L), new ResourceItem(Sink$CC.m("ta"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ta/strings.commonMain.cvr", 161L, 142L), new ResourceItem(Sink$CC.m("th"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-th/strings.commonMain.cvr", 117L, 106L), new ResourceItem(Sink$CC.m("tr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-tr/strings.commonMain.cvr", 89L, 82L), new ResourceItem(Sink$CC.m("uk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-uk/strings.commonMain.cvr", 105L, 98L), new ResourceItem(Sink$CC.m("vi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-vi/strings.commonMain.cvr", 93L, 86L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("CN")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rCN/strings.commonMain.cvr", 85L, 74L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("TW")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rTW/strings.commonMain.cvr", 85L, 74L), new ResourceItem(EmptySet.INSTANCE, "composeResources/net.thunderbird.core.ui.designsystem.resources/values/strings.commonMain.cvr", 89L, 78L)}));
    }

    private final Object invoke$net$thunderbird$core$ui$designsystem$resources$String0_commonMainKt$$ExternalSyntheticLambda3() {
        return new StringResource("string:designsystem_molecule_email_address_input_label", ArraysKt___ArraysKt.toSet(new ResourceItem[]{new ResourceItem(Sink$CC.m("ar"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ar/strings.commonMain.cvr", 212L, 115L), new ResourceItem(Sink$CC.m("be"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-be/strings.commonMain.cvr", 204L, 115L), new ResourceItem(Sink$CC.m("bg"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bg/strings.commonMain.cvr", 236L, 83L), new ResourceItem(Sink$CC.m("bn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bn/strings.commonMain.cvr", 248L, 103L), new ResourceItem(Sink$CC.m("br"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-br/strings.commonMain.cvr", 184L, 79L), new ResourceItem(Sink$CC.m("bs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bs/strings.commonMain.cvr", 172L, 71L), new ResourceItem(Sink$CC.m("ca"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ca/strings.commonMain.cvr", 184L, 83L), new ResourceItem(Sink$CC.m("co"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-co/strings.commonMain.cvr", 208L, 83L), new ResourceItem(Sink$CC.m("cs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cs/strings.commonMain.cvr", 164L, 79L), new ResourceItem(Sink$CC.m("cy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cy/strings.commonMain.cvr", 176L, 79L), new ResourceItem(Sink$CC.m("da"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-da/strings.commonMain.cvr", 164L, 75L), new ResourceItem(Sink$CC.m("de"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-de/strings.commonMain.cvr", 180L, 75L), new ResourceItem(Sink$CC.m("el"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-el/strings.commonMain.cvr", 264L, 87L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("en"), new RegionQualifier("GB")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-en-rGB/strings.commonMain.cvr", 168L, 75L), new ResourceItem(Sink$CC.m("eo"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-eo/strings.commonMain.cvr", 172L, 75L), new ResourceItem(Sink$CC.m("es"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-es/strings.commonMain.cvr", 184L, 83L), new ResourceItem(Sink$CC.m("et"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-et/strings.commonMain.cvr", 172L, 75L), new ResourceItem(Sink$CC.m("eu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-eu/strings.commonMain.cvr", 176L, 75L), new ResourceItem(Sink$CC.m("fa"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fa/strings.commonMain.cvr", 216L, 91L), new ResourceItem(Sink$CC.m("fi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fi/strings.commonMain.cvr", 176L, 79L), new ResourceItem(Sink$CC.m("fr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fr/strings.commonMain.cvr", 192L, 79L), new ResourceItem(Sink$CC.m("fy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fy/strings.commonMain.cvr", 176L, 71L), new ResourceItem(Sink$CC.m("ga"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ga/strings.commonMain.cvr", 180L, 83L), new ResourceItem(Sink$CC.m("gd"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-gd/strings.commonMain.cvr", 188L, 79L), new ResourceItem(Sink$CC.m("gl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-gl/strings.commonMain.cvr", 180L, 83L), new ResourceItem(Sink$CC.m("hi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hi/strings.commonMain.cvr", 240L, 87L), new ResourceItem(Sink$CC.m("hr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hr/strings.commonMain.cvr", 172L, 75L), new ResourceItem(Sink$CC.m("hu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hu/strings.commonMain.cvr", 184L, 71L), new ResourceItem(Sink$CC.m("in"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-in/strings.commonMain.cvr", 188L, 71L), new ResourceItem(Sink$CC.m("is"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-is/strings.commonMain.cvr", 168L, 75L), new ResourceItem(Sink$CC.m("it"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-it/strings.commonMain.cvr", 172L, 75L), new ResourceItem(Sink$CC.m("iw"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-iw/strings.commonMain.cvr", 180L, 83L), new ResourceItem(Sink$CC.m("ja"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ja/strings.commonMain.cvr", 196L, 83L), new ResourceItem(Sink$CC.m("kk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-kk/strings.commonMain.cvr", 212L, 99L), new ResourceItem(Sink$CC.m("ko"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ko/strings.commonMain.cvr", 188L, 79L), new ResourceItem(Sink$CC.m("lt"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-lt/strings.commonMain.cvr", 188L, 83L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("nb"), new RegionQualifier("NO")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nb-rNO/strings.commonMain.cvr", 164L, 75L), new ResourceItem(Sink$CC.m("nl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nl/strings.commonMain.cvr", 180L, 71L), new ResourceItem(Sink$CC.m("nn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nn/strings.commonMain.cvr", 164L, 75L), new ResourceItem(Sink$CC.m("pl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pl/strings.commonMain.cvr", 164L, 71L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("BR")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rBR/strings.commonMain.cvr", 168L, 79L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("PT")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rPT/strings.commonMain.cvr", 188L, 83L), new ResourceItem(Sink$CC.m("ro"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ro/strings.commonMain.cvr", 168L, 75L), new ResourceItem(Sink$CC.m("ru"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ru/strings.commonMain.cvr", 204L, 115L), new ResourceItem(Sink$CC.m("sk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sk/strings.commonMain.cvr", 164L, 79L), new ResourceItem(Sink$CC.m("sl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sl/strings.commonMain.cvr", 164L, 79L), new ResourceItem(Sink$CC.m("sq"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sq/strings.commonMain.cvr", 184L, 75L), new ResourceItem(Sink$CC.m("sr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sr/strings.commonMain.cvr", 204L, 87L), new ResourceItem(Sink$CC.m("sv"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sv/strings.commonMain.cvr", 168L, 71L), new ResourceItem(Sink$CC.m("ta"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ta/strings.commonMain.cvr", 304L, 123L), new ResourceItem(Sink$CC.m("th"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-th/strings.commonMain.cvr", 224L, 107L), new ResourceItem(Sink$CC.m("tr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-tr/strings.commonMain.cvr", 172L, 75L), new ResourceItem(Sink$CC.m("uk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-uk/strings.commonMain.cvr", 204L, 91L), new ResourceItem(Sink$CC.m("vi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-vi/strings.commonMain.cvr", 180L, 79L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("CN")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rCN/strings.commonMain.cvr", 160L, 79L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("TW")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rTW/strings.commonMain.cvr", 160L, 79L), new ResourceItem(EmptySet.INSTANCE, "composeResources/net.thunderbird.core.ui.designsystem.resources/values/strings.commonMain.cvr", 168L, 75L)}));
    }

    private final Object invoke$net$thunderbird$core$ui$designsystem$resources$String0_commonMainKt$$ExternalSyntheticLambda4() {
        return new StringResource("string:designsystem_molecule_error_view_button_retry", ArraysKt___ArraysKt.toSet(new ResourceItem[]{new ResourceItem(Sink$CC.m("ar"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ar/strings.commonMain.cvr", 328L, 89L), new ResourceItem(Sink$CC.m("be"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-be/strings.commonMain.cvr", 320L, 77L), new ResourceItem(Sink$CC.m("bg"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bg/strings.commonMain.cvr", 320L, 89L), new ResourceItem(Sink$CC.m("bn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bn/strings.commonMain.cvr", 352L, 105L), new ResourceItem(Sink$CC.m("bs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bs/strings.commonMain.cvr", 244L, 77L), new ResourceItem(Sink$CC.m("ca"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ca/strings.commonMain.cvr", 268L, 65L), new ResourceItem(Sink$CC.m("co"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-co/strings.commonMain.cvr", 292L, 69L), new ResourceItem(Sink$CC.m("cs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cs/strings.commonMain.cvr", 244L, 69L), new ResourceItem(Sink$CC.m("cy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cy/strings.commonMain.cvr", 256L, 69L), new ResourceItem(Sink$CC.m("da"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-da/strings.commonMain.cvr", 240L, 69L), new ResourceItem(Sink$CC.m("de"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-de/strings.commonMain.cvr", 256L, 69L), new ResourceItem(Sink$CC.m("el"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-el/strings.commonMain.cvr", 352L, 77L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("en"), new RegionQualifier("GB")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-en-rGB/strings.commonMain.cvr", 244L, 61L), new ResourceItem(Sink$CC.m("eo"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-eo/strings.commonMain.cvr", 248L, 65L), new ResourceItem(Sink$CC.m("es"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-es/strings.commonMain.cvr", 268L, 69L), new ResourceItem(Sink$CC.m("et"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-et/strings.commonMain.cvr", 248L, 73L), new ResourceItem(Sink$CC.m("eu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-eu/strings.commonMain.cvr", 252L, 73L), new ResourceItem(Sink$CC.m("fa"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fa/strings.commonMain.cvr", 308L, 81L), new ResourceItem(Sink$CC.m("fi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fi/strings.commonMain.cvr", 256L, 77L), new ResourceItem(Sink$CC.m("fr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fr/strings.commonMain.cvr", 272L, 69L), new ResourceItem(Sink$CC.m("fy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fy/strings.commonMain.cvr", 248L, 73L), new ResourceItem(Sink$CC.m("ga"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ga/strings.commonMain.cvr", 264L, 81L), new ResourceItem(Sink$CC.m("gd"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-gd/strings.commonMain.cvr", 268L, 81L), new ResourceItem(Sink$CC.m("gl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-gl/strings.commonMain.cvr", 264L, 73L), new ResourceItem(Sink$CC.m("hi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hi/strings.commonMain.cvr", 328L, 109L), new ResourceItem(Sink$CC.m("hr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hr/strings.commonMain.cvr", 248L, 73L), new ResourceItem(Sink$CC.m("hu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hu/strings.commonMain.cvr", 256L, 61L), new ResourceItem(Sink$CC.m("in"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-in/strings.commonMain.cvr", 260L, 65L), new ResourceItem(Sink$CC.m("is"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-is/strings.commonMain.cvr", 244L, 69L), new ResourceItem(Sink$CC.m("it"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-it/strings.commonMain.cvr", 248L, 65L), new ResourceItem(Sink$CC.m("iw"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-iw/strings.commonMain.cvr", 264L, 73L), new ResourceItem(Sink$CC.m("ja"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ja/strings.commonMain.cvr", 280L, 65L), new ResourceItem(Sink$CC.m("kk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-kk/strings.commonMain.cvr", 312L, 77L), new ResourceItem(Sink$CC.m("ko"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ko/strings.commonMain.cvr", 268L, 65L), new ResourceItem(Sink$CC.m("lt"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-lt/strings.commonMain.cvr", 272L, 77L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("nb"), new RegionQualifier("NO")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nb-rNO/strings.commonMain.cvr", 240L, 69L), new ResourceItem(Sink$CC.m("nl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nl/strings.commonMain.cvr", 252L, 77L), new ResourceItem(Sink$CC.m("nn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nn/strings.commonMain.cvr", 240L, 69L), new ResourceItem(Sink$CC.m("pl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pl/strings.commonMain.cvr", 236L, 77L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("BR")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rBR/strings.commonMain.cvr", 248L, 77L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("PT")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rPT/strings.commonMain.cvr", 272L, 77L), new ResourceItem(Sink$CC.m("ro"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ro/strings.commonMain.cvr", 244L, 69L), new ResourceItem(Sink$CC.m("ru"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ru/strings.commonMain.cvr", 320L, 77L), new ResourceItem(Sink$CC.m("sk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sk/strings.commonMain.cvr", 244L, 73L), new ResourceItem(Sink$CC.m("sl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sl/strings.commonMain.cvr", 244L, 73L), new ResourceItem(Sink$CC.m("sq"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sq/strings.commonMain.cvr", 260L, 65L), new ResourceItem(Sink$CC.m("sr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sr/strings.commonMain.cvr", 292L, 89L), new ResourceItem(Sink$CC.m("sv"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sv/strings.commonMain.cvr", 240L, 73L), new ResourceItem(Sink$CC.m("ta"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ta/strings.commonMain.cvr", 428L, 145L), new ResourceItem(Sink$CC.m("th"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-th/strings.commonMain.cvr", 332L, 81L), new ResourceItem(Sink$CC.m("tr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-tr/strings.commonMain.cvr", 248L, 69L), new ResourceItem(Sink$CC.m("uk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-uk/strings.commonMain.cvr", 296L, 97L), new ResourceItem(Sink$CC.m("vi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-vi/strings.commonMain.cvr", 260L, 69L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("CN")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rCN/strings.commonMain.cvr", 240L, 61L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("TW")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rTW/strings.commonMain.cvr", 240L, 69L), new ResourceItem(EmptySet.INSTANCE, "composeResources/net.thunderbird.core.ui.designsystem.resources/values/strings.commonMain.cvr", 244L, 61L)}));
    }

    private final Object invoke$net$thunderbird$core$ui$designsystem$resources$String0_commonMainKt$$ExternalSyntheticLambda5() {
        return new StringResource("string:designsystem_molecule_password_input_label", ArraysKt___ArraysKt.toSet(new ResourceItem[]{new ResourceItem(Sink$CC.m("ar"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ar/strings.commonMain.cvr", 418L, 78L), new ResourceItem(Sink$CC.m("be"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-be/strings.commonMain.cvr", 398L, 66L), new ResourceItem(Sink$CC.m("bg"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bg/strings.commonMain.cvr", 410L, 66L), new ResourceItem(Sink$CC.m("bn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bn/strings.commonMain.cvr", 458L, 86L), new ResourceItem(Sink$CC.m("bs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bs/strings.commonMain.cvr", 322L, 62L), new ResourceItem(Sink$CC.m("ca"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ca/strings.commonMain.cvr", 334L, 66L), new ResourceItem(Sink$CC.m("co"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-co/strings.commonMain.cvr", 362L, 74L), new ResourceItem(Sink$CC.m("cs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cs/strings.commonMain.cvr", 314L, 58L), new ResourceItem(Sink$CC.m("cy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cy/strings.commonMain.cvr", 326L, 62L), new ResourceItem(Sink$CC.m("da"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-da/strings.commonMain.cvr", 310L, 62L), new ResourceItem(Sink$CC.m("de"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-de/strings.commonMain.cvr", 326L, 62L), new ResourceItem(Sink$CC.m("el"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-el/strings.commonMain.cvr", 430L, 94L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("en"), new RegionQualifier("GB")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-en-rGB/strings.commonMain.cvr", 306L, 62L), new ResourceItem(Sink$CC.m("eo"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-eo/strings.commonMain.cvr", 314L, 62L), new ResourceItem(Sink$CC.m("es"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-es/strings.commonMain.cvr", 338L, 66L), new ResourceItem(Sink$CC.m("et"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-et/strings.commonMain.cvr", 322L, 62L), new ResourceItem(Sink$CC.m("eu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-eu/strings.commonMain.cvr", 326L, 62L), new ResourceItem(Sink$CC.m("fa"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fa/strings.commonMain.cvr", 390L, 70L), new ResourceItem(Sink$CC.m("fi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fi/strings.commonMain.cvr", 334L, 62L), new ResourceItem(Sink$CC.m("fr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fr/strings.commonMain.cvr", 342L, 66L), new ResourceItem(Sink$CC.m("fy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fy/strings.commonMain.cvr", 322L, 62L), new ResourceItem(Sink$CC.m("ga"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ga/strings.commonMain.cvr", 346L, 62L), new ResourceItem(Sink$CC.m("gd"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-gd/strings.commonMain.cvr", 350L, 66L), new ResourceItem(Sink$CC.m("gl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-gl/strings.commonMain.cvr", 338L, 66L), new ResourceItem(Sink$CC.m("hi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hi/strings.commonMain.cvr", 438L, 78L), new ResourceItem(Sink$CC.m("hr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hr/strings.commonMain.cvr", 322L, 62L), new ResourceItem(Sink$CC.m("hu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hu/strings.commonMain.cvr", 318L, 62L), new ResourceItem(Sink$CC.m("in"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-in/strings.commonMain.cvr", 326L, 66L), new ResourceItem(Sink$CC.m("is"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-is/strings.commonMain.cvr", 314L, 62L), new ResourceItem(Sink$CC.m("it"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-it/strings.commonMain.cvr", 314L, 62L), new ResourceItem(Sink$CC.m("iw"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-iw/strings.commonMain.cvr", 338L, 66L), new ResourceItem(Sink$CC.m("ja"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ja/strings.commonMain.cvr", 346L, 70L), new ResourceItem(Sink$CC.m("kk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-kk/strings.commonMain.cvr", 390L, 66L), new ResourceItem(Sink$CC.m("ko"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ko/strings.commonMain.cvr", 334L, 66L), new ResourceItem(Sink$CC.m("lt"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-lt/strings.commonMain.cvr", 350L, 66L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("nb"), new RegionQualifier("NO")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nb-rNO/strings.commonMain.cvr", 310L, 62L), new ResourceItem(Sink$CC.m("nl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nl/strings.commonMain.cvr", 330L, 66L), new ResourceItem(Sink$CC.m("nn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nn/strings.commonMain.cvr", 310L, 62L), new ResourceItem(Sink$CC.m("pl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pl/strings.commonMain.cvr", 314L, 58L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("BR")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rBR/strings.commonMain.cvr", 326L, 58L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("PT")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rPT/strings.commonMain.cvr", 350L, 70L), new ResourceItem(Sink$CC.m("ro"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ro/strings.commonMain.cvr", 314L, 58L), new ResourceItem(Sink$CC.m("ru"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ru/strings.commonMain.cvr", 398L, 66L), new ResourceItem(Sink$CC.m("sk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sk/strings.commonMain.cvr", 318L, 58L), new ResourceItem(Sink$CC.m("sl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sl/strings.commonMain.cvr", 318L, 58L), new ResourceItem(Sink$CC.m("sq"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sq/strings.commonMain.cvr", 326L, 66L), new ResourceItem(Sink$CC.m("sr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sr/strings.commonMain.cvr", 382L, 70L), new ResourceItem(Sink$CC.m("sv"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sv/strings.commonMain.cvr", 314L, 62L), new ResourceItem(Sink$CC.m("ta"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ta/strings.commonMain.cvr", 574L, 90L), new ResourceItem(Sink$CC.m("th"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-th/strings.commonMain.cvr", 414L, 82L), new ResourceItem(Sink$CC.m("tr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-tr/strings.commonMain.cvr", 318L, 58L), new ResourceItem(Sink$CC.m("uk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-uk/strings.commonMain.cvr", 394L, 66L), new ResourceItem(Sink$CC.m("vi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-vi/strings.commonMain.cvr", 330L, 66L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("CN")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rCN/strings.commonMain.cvr", 302L, 58L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("TW")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rTW/strings.commonMain.cvr", 310L, 58L), new ResourceItem(EmptySet.INSTANCE, "composeResources/net.thunderbird.core.ui.designsystem.resources/values/strings.commonMain.cvr", 306L, 62L)}));
    }

    private final Object invoke$net$thunderbird$core$ui$designsystem$resources$String0_commonMainKt$$ExternalSyntheticLambda7() {
        return new StringResource("string:designsystem_molecule_swipeable_row_start_to_end_accessibility_description", ArraysKt___ArraysKt.toSet(new ResourceItem[]{new ResourceItem(Sink$CC.m("cs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cs/strings.commonMain.cvr", 508L, 134L), new ResourceItem(Sink$CC.m("cy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cy/strings.commonMain.cvr", 488L, 94L), new ResourceItem(Sink$CC.m("de"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-de/strings.commonMain.cvr", 524L, 134L), new ResourceItem(Sink$CC.m("el"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-el/strings.commonMain.cvr", 640L, 106L), new ResourceItem(Sink$CC.m("es"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-es/strings.commonMain.cvr", 552L, 134L), new ResourceItem(Sink$CC.m("et"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-et/strings.commonMain.cvr", 488L, 102L), new ResourceItem(Sink$CC.m("fr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fr/strings.commonMain.cvr", 524L, 114L), new ResourceItem(Sink$CC.m("fy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fy/strings.commonMain.cvr", 484L, 102L), new ResourceItem(Sink$CC.m("ga"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ga/strings.commonMain.cvr", 512L, 102L), new ResourceItem(Sink$CC.m("hu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hu/strings.commonMain.cvr", 476L, 98L), new ResourceItem(Sink$CC.m("in"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-in/strings.commonMain.cvr", 492L, 98L), new ResourceItem(Sink$CC.m("it"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-it/strings.commonMain.cvr", 516L, 138L), new ResourceItem(Sink$CC.m("ja"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ja/strings.commonMain.cvr", 512L, 94L), new ResourceItem(Sink$CC.m("kk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-kk/strings.commonMain.cvr", 564L, 102L), new ResourceItem(Sink$CC.m("ko"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ko/strings.commonMain.cvr", 500L, 102L), new ResourceItem(Sink$CC.m("nl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nl/strings.commonMain.cvr", 496L, 98L), new ResourceItem(Sink$CC.m("nn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nn/strings.commonMain.cvr", 504L, 130L), new ResourceItem(Sink$CC.m("pl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pl/strings.commonMain.cvr", 508L, 134L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("BR")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rBR/strings.commonMain.cvr", 520L, 130L), new ResourceItem(Sink$CC.m("ro"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ro/strings.commonMain.cvr", 476L, 102L), new ResourceItem(Sink$CC.m("ru"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ru/strings.commonMain.cvr", 636L, 174L), new ResourceItem(Sink$CC.m("sl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sl/strings.commonMain.cvr", 476L, 98L), new ResourceItem(Sink$CC.m("sq"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sq/strings.commonMain.cvr", 548L, 154L), new ResourceItem(Sink$CC.m("sv"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sv/strings.commonMain.cvr", 516L, 138L), new ResourceItem(Sink$CC.m("uk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-uk/strings.commonMain.cvr", 568L, 106L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("CN")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rCN/strings.commonMain.cvr", 464L, 102L), new ResourceItem(EmptySet.INSTANCE, "composeResources/net.thunderbird.core.ui.designsystem.resources/values/strings.commonMain.cvr", 468L, 98L)}));
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                throw new IllegalStateException("No ThemeSizes provided");
            case 1:
                ImageVector.Builder builder = new ImageVector.Builder("OutlinedSmileIcon", 24.0f, 24.0f, 960.0f, 960.0f, 0L, 0, false, 96);
                SolidColor solidColor = new SolidColor(Color.Black);
                int i = VectorKt.$r8$clinit;
                Headers.Builder m = Modifier.CC.m(620.0f, 440.0f);
                m.quadToRelative(25.0f, 0.0f, 42.5f, -17.5f);
                m.reflectiveQuadTo(680.0f, 380.0f);
                m.quadToRelative(0.0f, -25.0f, -17.5f, -42.5f);
                m.reflectiveQuadTo(620.0f, 320.0f);
                m.quadToRelative(-25.0f, 0.0f, -42.5f, 17.5f);
                m.reflectiveQuadTo(560.0f, 380.0f);
                m.quadToRelative(0.0f, 25.0f, 17.5f, 42.5f);
                m.reflectiveQuadTo(620.0f, 440.0f);
                m.close();
                m.moveToRelative(-280.0f, 0.0f);
                m.quadToRelative(25.0f, 0.0f, 42.5f, -17.5f);
                m.reflectiveQuadTo(400.0f, 380.0f);
                m.quadToRelative(0.0f, -25.0f, -17.5f, -42.5f);
                m.reflectiveQuadTo(340.0f, 320.0f);
                m.quadToRelative(-25.0f, 0.0f, -42.5f, 17.5f);
                m.reflectiveQuadTo(280.0f, 380.0f);
                m.quadToRelative(0.0f, 25.0f, 17.5f, 42.5f);
                m.reflectiveQuadTo(340.0f, 440.0f);
                m.close();
                m.moveToRelative(140.0f, 260.0f);
                m.quadToRelative(68.0f, 0.0f, 123.5f, -38.5f);
                m.reflectiveQuadTo(684.0f, 560.0f);
                m.lineToRelative(-66.0f, 0.0f);
                m.quadToRelative(-22.0f, 37.0f, -58.5f, 58.5f);
                m.reflectiveQuadTo(480.0f, 640.0f);
                m.quadToRelative(-43.0f, 0.0f, -79.5f, -21.5f);
                m.reflectiveQuadTo(342.0f, 560.0f);
                m.lineToRelative(-66.0f, 0.0f);
                m.quadToRelative(25.0f, 63.0f, 80.5f, 101.5f);
                m.reflectiveQuadTo(480.0f, 700.0f);
                m.close();
                m.moveToRelative(0.0f, 180.0f);
                m.quadToRelative(-83.0f, 0.0f, -156.0f, -31.5f);
                m.reflectiveQuadTo(197.0f, 763.0f);
                m.quadToRelative(-54.0f, -54.0f, -85.5f, -127.0f);
                m.reflectiveQuadTo(80.0f, 480.0f);
                m.quadToRelative(0.0f, -83.0f, 31.5f, -156.0f);
                m.reflectiveQuadTo(197.0f, 197.0f);
                m.quadToRelative(54.0f, -54.0f, 127.0f, -85.5f);
                m.reflectiveQuadTo(480.0f, 80.0f);
                m.quadToRelative(83.0f, 0.0f, 156.0f, 31.5f);
                m.reflectiveQuadTo(763.0f, 197.0f);
                m.quadToRelative(54.0f, 54.0f, 85.5f, 127.0f);
                m.reflectiveQuadTo(880.0f, 480.0f);
                m.quadToRelative(0.0f, 83.0f, -31.5f, 156.0f);
                m.reflectiveQuadTo(763.0f, 763.0f);
                m.quadToRelative(-54.0f, 54.0f, -127.0f, 85.5f);
                m.reflectiveQuadTo(480.0f, 880.0f);
                m.close();
                m.moveToRelative(0.0f, -400.0f);
                m.close();
                m.moveToRelative(0.0f, 320.0f);
                m.quadToRelative(134.0f, 0.0f, 227.0f, -93.0f);
                m.reflectiveQuadToRelative(93.0f, -227.0f);
                m.quadToRelative(0.0f, -134.0f, -93.0f, -227.0f);
                m.reflectiveQuadToRelative(-227.0f, -93.0f);
                m.quadToRelative(-134.0f, 0.0f, -227.0f, 93.0f);
                m.reflectiveQuadToRelative(-93.0f, 227.0f);
                m.quadToRelative(0.0f, 134.0f, 93.0f, 227.0f);
                m.reflectiveQuadToRelative(227.0f, 93.0f);
                m.close();
                builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", m.namesAndValues);
                return builder.build();
            case 2:
                ImageVector.Builder builder2 = new ImageVector.Builder("OutlinedSpaIcon", 24.0f, 24.0f, 960.0f, 960.0f, 0L, 0, false, 96);
                SolidColor solidColor2 = new SolidColor(Color.Black);
                int i2 = VectorKt.$r8$clinit;
                Headers.Builder m2 = Modifier.CC.m(480.0f, 880.0f);
                m2.quadToRelative(-73.0f, -9.0f, -145.0f, -39.5f);
                m2.reflectiveQuadTo(206.5f, 753.0f);
                m2.quadTo(150.0f, 696.0f, 115.0f, 609.0f);
                m2.reflectiveQuadTo(80.0f, 400.0f);
                m2.lineToRelative(0.0f, -40.0f);
                m2.lineToRelative(40.0f, 0.0f);
                m2.quadToRelative(51.0f, 0.0f, 105.0f, 13.0f);
                m2.reflectiveQuadToRelative(101.0f, 39.0f);
                m2.quadToRelative(12.0f, -86.0f, 54.5f, -176.5f);
                m2.reflectiveQuadTo(480.0f, 80.0f);
                m2.quadToRelative(57.0f, 65.0f, 99.5f, 155.5f);
                m2.reflectiveQuadTo(634.0f, 412.0f);
                m2.quadToRelative(47.0f, -26.0f, 101.0f, -39.0f);
                m2.reflectiveQuadToRelative(105.0f, -13.0f);
                m2.lineToRelative(40.0f, 0.0f);
                m2.lineToRelative(0.0f, 40.0f);
                m2.quadToRelative(0.0f, 122.0f, -35.0f, 209.0f);
                m2.reflectiveQuadToRelative(-91.5f, 144.0f);
                m2.quadToRelative(-56.5f, 57.0f, -128.0f, 87.5f);
                m2.reflectiveQuadTo(480.0f, 880.0f);
                m2.close();
                m2.moveToRelative(-2.0f, -82.0f);
                m2.quadToRelative(-11.0f, -166.0f, -98.5f, -251.0f);
                m2.reflectiveQuadTo(162.0f, 442.0f);
                m2.quadToRelative(11.0f, 171.0f, 101.5f, 255.0f);
                m2.reflectiveQuadTo(478.0f, 798.0f);
                m2.close();
                m2.moveToRelative(2.0f, -254.0f);
                m2.quadToRelative(15.0f, -22.0f, 36.5f, -45.5f);
                m2.reflectiveQuadTo(558.0f, 458.0f);
                m2.quadToRelative(-2.0f, -57.0f, -22.5f, -119.0f);
                m2.reflectiveQuadTo(480.0f, 218.0f);
                m2.quadToRelative(-35.0f, 59.0f, -55.5f, 121.0f);
                m2.reflectiveQuadTo(402.0f, 458.0f);
                m2.quadToRelative(20.0f, 17.0f, 42.0f, 40.5f);
                m2.reflectiveQuadToRelative(36.0f, 45.5f);
                m2.close();
                m2.moveToRelative(78.0f, 236.0f);
                m2.quadToRelative(37.0f, -12.0f, 77.0f, -35.0f);
                m2.reflectiveQuadToRelative(74.5f, -62.5f);
                m2.quadToRelative(34.5f, -39.5f, 59.0f, -98.5f);
                m2.reflectiveQuadTo(798.0f, 442.0f);
                m2.quadToRelative(-94.0f, 14.0f, -165.0f, 62.5f);
                m2.reflectiveQuadTo(524.0f, 628.0f);
                m2.quadToRelative(12.0f, 32.0f, 20.5f, 70.0f);
                m2.reflectiveQuadToRelative(13.5f, 82.0f);
                m2.close();
                m2.moveToRelative(-78.0f, -236.0f);
                m2.close();
                m2.moveToRelative(78.0f, 236.0f);
                m2.close();
                m2.moveToRelative(-80.0f, 18.0f);
                m2.close();
                m2.moveToRelative(46.0f, -170.0f);
                m2.close();
                m2.moveTo(480.0f, 880.0f);
                m2.close();
                builder2.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor2, null, "", m2.namesAndValues);
                return builder2.build();
            case 3:
                ImageVector.Builder builder3 = new ImageVector.Builder("OutlinedStarIcon", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                SolidColor solidColor3 = new SolidColor(Color.Black);
                int i3 = VectorKt.$r8$clinit;
                Headers.Builder builder4 = new Headers.Builder(1);
                builder4.moveTo(22.0f, 9.74f);
                builder4.lineTo(14.81f, 9.12f);
                builder4.lineTo(12.0f, 2.5f);
                builder4.lineTo(9.19f, 9.13f);
                builder4.lineTo(2.0f, 9.74f);
                builder4.lineTo(7.46f, 14.47f);
                builder4.lineTo(5.82f, 21.5f);
                builder4.lineTo(12.0f, 17.77f);
                builder4.lineTo(18.18f, 21.5f);
                builder4.lineTo(16.55f, 14.47f);
                builder4.lineTo(22.0f, 9.74f);
                builder4.close();
                builder4.moveTo(12.0f, 15.9f);
                builder4.lineTo(8.24f, 18.17f);
                builder4.lineTo(9.24f, 13.89f);
                builder4.lineTo(5.92f, 11.01f);
                builder4.lineTo(10.3f, 10.63f);
                builder4.lineTo(12.0f, 6.6f);
                builder4.lineTo(13.71f, 10.64f);
                builder4.lineTo(18.09f, 11.02f);
                builder4.lineTo(14.77f, 13.9f);
                builder4.lineTo(15.77f, 18.18f);
                builder4.lineTo(12.0f, 15.9f);
                builder4.close();
                builder3.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor3, null, "", builder4.namesAndValues);
                return builder3.build();
            case 4:
                ImageVector.Builder builder5 = new ImageVector.Builder("OutlinedUploadIcon", 24.0f, 24.0f, 960.0f, 960.0f, 0L, 0, false, 96);
                SolidColor solidColor4 = new SolidColor(Color.Black);
                int i4 = VectorKt.$r8$clinit;
                Headers.Builder builder6 = new Headers.Builder(1);
                builder6.moveTo(440.0f, 640.0f);
                builder6.lineToRelative(0.0f, -326.0f);
                builder6.lineTo(336.0f, 418.0f);
                builder6.lineToRelative(-56.0f, -58.0f);
                builder6.lineToRelative(200.0f, -200.0f);
                builder6.lineToRelative(200.0f, 200.0f);
                builder6.lineToRelative(-56.0f, 58.0f);
                builder6.lineToRelative(-104.0f, -104.0f);
                Modifier.CC.m(builder6, 0.0f, 326.0f, -80.0f, 0.0f);
                builder6.moveTo(240.0f, 800.0f);
                builder6.quadToRelative(-33.0f, 0.0f, -56.5f, -23.5f);
                builder6.reflectiveQuadTo(160.0f, 720.0f);
                builder6.lineToRelative(0.0f, -120.0f);
                builder6.lineToRelative(80.0f, 0.0f);
                builder6.lineToRelative(0.0f, 120.0f);
                builder6.lineToRelative(480.0f, 0.0f);
                builder6.lineToRelative(0.0f, -120.0f);
                builder6.lineToRelative(80.0f, 0.0f);
                builder6.lineToRelative(0.0f, 120.0f);
                builder6.quadToRelative(0.0f, 33.0f, -23.5f, 56.5f);
                builder6.reflectiveQuadTo(720.0f, 800.0f);
                builder6.lineTo(240.0f, 800.0f);
                builder6.close();
                builder5.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor4, null, "", builder6.namesAndValues);
                return builder5.build();
            case 5:
                ImageVector.Builder builder7 = new ImageVector.Builder("OutlinedWarningIcon", 24.0f, 24.0f, 960.0f, 960.0f, 0L, 0, false, 96);
                SolidColor solidColor5 = new SolidColor(Color.Black);
                int i5 = VectorKt.$r8$clinit;
                Headers.Builder builder8 = new Headers.Builder(1);
                builder8.moveTo(40.0f, 840.0f);
                builder8.lineTo(480.0f, 80.0f);
                builder8.lineTo(920.0f, 840.0f);
                builder8.lineTo(40.0f, 840.0f);
                builder8.close();
                builder8.moveTo(178.0f, 760.0f);
                builder8.lineTo(782.0f, 760.0f);
                builder8.lineTo(480.0f, 240.0f);
                builder8.lineTo(178.0f, 760.0f);
                builder8.close();
                builder8.moveTo(480.0f, 720.0f);
                builder8.quadTo(497.0f, 720.0f, 508.5f, 708.5f);
                builder8.quadTo(520.0f, 697.0f, 520.0f, 680.0f);
                builder8.quadTo(520.0f, 663.0f, 508.5f, 651.5f);
                builder8.quadTo(497.0f, 640.0f, 480.0f, 640.0f);
                builder8.quadTo(463.0f, 640.0f, 451.5f, 651.5f);
                builder8.quadTo(440.0f, 663.0f, 440.0f, 680.0f);
                builder8.quadTo(440.0f, 697.0f, 451.5f, 708.5f);
                builder8.quadTo(463.0f, 720.0f, 480.0f, 720.0f);
                builder8.close();
                builder8.moveTo(440.0f, 600.0f);
                builder8.lineTo(520.0f, 600.0f);
                builder8.lineTo(520.0f, 400.0f);
                builder8.lineTo(440.0f, 400.0f);
                builder8.lineTo(440.0f, 600.0f);
                builder8.close();
                builder8.moveTo(480.0f, 500.0f);
                builder8.lineTo(480.0f, 500.0f);
                builder8.lineTo(480.0f, 500.0f);
                builder8.lineTo(480.0f, 500.0f);
                builder8.close();
                builder7.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor5, null, "", builder8.namesAndValues);
                return builder7.build();
            case 6:
                ImageVector.Builder builder9 = new ImageVector.Builder("OutlinedWorkIcon", 24.0f, 24.0f, 960.0f, 960.0f, 0L, 0, false, 96);
                SolidColor solidColor6 = new SolidColor(Color.Black);
                int i6 = VectorKt.$r8$clinit;
                Headers.Builder m3 = Modifier.CC.m(160.0f, 840.0f);
                m3.quadToRelative(-33.0f, 0.0f, -56.5f, -23.5f);
                m3.reflectiveQuadTo(80.0f, 760.0f);
                m3.lineToRelative(0.0f, -440.0f);
                m3.quadToRelative(0.0f, -33.0f, 23.5f, -56.5f);
                m3.reflectiveQuadTo(160.0f, 240.0f);
                m3.lineToRelative(160.0f, 0.0f);
                m3.lineToRelative(0.0f, -80.0f);
                m3.quadToRelative(0.0f, -33.0f, 23.5f, -56.5f);
                m3.reflectiveQuadTo(400.0f, 80.0f);
                m3.lineToRelative(160.0f, 0.0f);
                m3.quadToRelative(33.0f, 0.0f, 56.5f, 23.5f);
                m3.reflectiveQuadTo(640.0f, 160.0f);
                m3.lineToRelative(0.0f, 80.0f);
                m3.lineToRelative(160.0f, 0.0f);
                m3.quadToRelative(33.0f, 0.0f, 56.5f, 23.5f);
                m3.reflectiveQuadTo(880.0f, 320.0f);
                m3.lineToRelative(0.0f, 440.0f);
                m3.quadToRelative(0.0f, 33.0f, -23.5f, 56.5f);
                m3.reflectiveQuadTo(800.0f, 840.0f);
                m3.lineTo(160.0f, 840.0f);
                m3.close();
                m3.moveToRelative(0.0f, -80.0f);
                m3.lineToRelative(640.0f, 0.0f);
                m3.lineToRelative(0.0f, -440.0f);
                m3.lineTo(160.0f, 320.0f);
                m3.lineToRelative(0.0f, 440.0f);
                m3.close();
                m3.moveToRelative(240.0f, -520.0f);
                m3.lineToRelative(160.0f, 0.0f);
                m3.lineToRelative(0.0f, -80.0f);
                m3.lineTo(400.0f, 160.0f);
                m3.lineToRelative(0.0f, 80.0f);
                m3.close();
                m3.moveTo(160.0f, 760.0f);
                Modifier.CC.m(m3, 0.0f, -440.0f, 0.0f, 440.0f);
                builder9.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor6, null, "", m3.namesAndValues);
                return builder9.build();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return true;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                throw new IllegalStateException("No ThemeColorScheme provided");
            case 9:
                throw new IllegalStateException("No ThemeElevations provided");
            case 10:
                throw new IllegalStateException("No ThemeImages provided");
            case 11:
                throw new IllegalStateException("No ThemeShapes provided");
            case BasicTextKt.ShiftMeta /* 12 */:
                throw new IllegalStateException("No ThemeSpacings provided");
            case 13:
                throw new IllegalStateException("No ThemeTypography provided");
            case 14:
                return new DrawableResource("drawable:core_ui_theme2_k9mail_logo", Validate.setOf(new ResourceItem(EmptySet.INSTANCE, "composeResources/net.thunderbird.core.ui.compose.theme2.resources/drawable/core_ui_theme2_k9mail_logo.xml", -1L, -1L)));
            case OffsetKt.Horizontal /* 15 */:
                return new DrawableResource("drawable:core_ui_theme2_thunderbird_logo", Validate.setOf(new ResourceItem(EmptySet.INSTANCE, "composeResources/net.thunderbird.core.ui.compose.theme2.resources/drawable/core_ui_theme2_thunderbird_logo.xml", -1L, -1L)));
            case 16:
                return new StringResource("string:designsystem_atom_password_textfield_hide_password", ArraysKt___ArraysKt.toSet(new ResourceItem[]{new ResourceItem(Sink$CC.m("ar"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ar/strings.commonMain.cvr", 10L, 102L), new ResourceItem(Sink$CC.m("be"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-be/strings.commonMain.cvr", 10L, 94L), new ResourceItem(Sink$CC.m("bg"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bg/strings.commonMain.cvr", 10L, 110L), new ResourceItem(Sink$CC.m("bn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bn/strings.commonMain.cvr", 10L, 118L), new ResourceItem(Sink$CC.m("br"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-br/strings.commonMain.cvr", 10L, 82L), new ResourceItem(Sink$CC.m("bs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-bs/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("ca"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ca/strings.commonMain.cvr", 10L, 86L), new ResourceItem(Sink$CC.m("co"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-co/strings.commonMain.cvr", 10L, 98L), new ResourceItem(Sink$CC.m("cs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cs/strings.commonMain.cvr", 10L, 74L), new ResourceItem(Sink$CC.m("cy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cy/strings.commonMain.cvr", 10L, 82L), new ResourceItem(Sink$CC.m("da"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-da/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("de"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-de/strings.commonMain.cvr", 10L, 86L), new ResourceItem(Sink$CC.m("el"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-el/strings.commonMain.cvr", 10L, 126L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("en"), new RegionQualifier("GB")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-en-rGB/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("eo"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-eo/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("es"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-es/strings.commonMain.cvr", 10L, 86L), new ResourceItem(Sink$CC.m("et"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-et/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("eu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-eu/strings.commonMain.cvr", 10L, 82L), new ResourceItem(Sink$CC.m("fa"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fa/strings.commonMain.cvr", 10L, 102L), new ResourceItem(Sink$CC.m("fi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fi/strings.commonMain.cvr", 10L, 82L), new ResourceItem(Sink$CC.m("fr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fr/strings.commonMain.cvr", 10L, 90L), new ResourceItem(Sink$CC.m("fy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fy/strings.commonMain.cvr", 10L, 86L), new ResourceItem(Sink$CC.m("ga"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ga/strings.commonMain.cvr", 10L, 82L), new ResourceItem(Sink$CC.m("gd"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-gd/strings.commonMain.cvr", 10L, 90L), new ResourceItem(Sink$CC.m("gl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-gl/strings.commonMain.cvr", 10L, 86L), new ResourceItem(Sink$CC.m("hi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hi/strings.commonMain.cvr", 10L, 114L), new ResourceItem(Sink$CC.m("hr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hr/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("hu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hu/strings.commonMain.cvr", 10L, 82L), new ResourceItem(Sink$CC.m("in"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-in/strings.commonMain.cvr", 10L, 90L), new ResourceItem(Sink$CC.m("is"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-is/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("it"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-it/strings.commonMain.cvr", 10L, 82L), new ResourceItem(Sink$CC.m("iw"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-iw/strings.commonMain.cvr", 10L, 86L), new ResourceItem(Sink$CC.m("ja"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ja/strings.commonMain.cvr", 10L, 94L), new ResourceItem(Sink$CC.m("kk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-kk/strings.commonMain.cvr", 10L, 98L), new ResourceItem(Sink$CC.m("ko"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ko/strings.commonMain.cvr", 10L, 90L), new ResourceItem(Sink$CC.m("lt"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-lt/strings.commonMain.cvr", 10L, 90L), new ResourceItem(Sink$CC.m("mnw"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-mnw/strings.commonMain.cvr", 10L, 114L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("nb"), new RegionQualifier("NO")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nb-rNO/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("nl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nl/strings.commonMain.cvr", 10L, 86L), new ResourceItem(Sink$CC.m("nn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nn/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("pl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pl/strings.commonMain.cvr", 10L, 74L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("BR")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rBR/strings.commonMain.cvr", 10L, 78L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("PT")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rPT/strings.commonMain.cvr", 10L, 90L), new ResourceItem(Sink$CC.m("ro"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ro/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("ru"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ru/strings.commonMain.cvr", 10L, 94L), new ResourceItem(Sink$CC.m("sk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sk/strings.commonMain.cvr", 10L, 74L), new ResourceItem(Sink$CC.m("sl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sl/strings.commonMain.cvr", 10L, 74L), new ResourceItem(Sink$CC.m("sq"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sq/strings.commonMain.cvr", 10L, 86L), new ResourceItem(Sink$CC.m("sr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sr/strings.commonMain.cvr", 10L, 94L), new ResourceItem(Sink$CC.m("sv"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sv/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("ta"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ta/strings.commonMain.cvr", 10L, 150L), new ResourceItem(Sink$CC.m("th"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-th/strings.commonMain.cvr", 10L, 106L), new ResourceItem(Sink$CC.m("tr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-tr/strings.commonMain.cvr", 10L, 78L), new ResourceItem(Sink$CC.m("uk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-uk/strings.commonMain.cvr", 10L, 94L), new ResourceItem(Sink$CC.m("vi"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-vi/strings.commonMain.cvr", 10L, 82L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("CN")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rCN/strings.commonMain.cvr", 10L, 74L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("TW")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rTW/strings.commonMain.cvr", 10L, 74L), new ResourceItem(EmptySet.INSTANCE, "composeResources/net.thunderbird.core.ui.designsystem.resources/values/strings.commonMain.cvr", 10L, 78L)}));
            case 17:
                return invoke$net$thunderbird$core$ui$designsystem$resources$String0_commonMainKt$$ExternalSyntheticLambda2();
            case 18:
                return invoke$net$thunderbird$core$ui$designsystem$resources$String0_commonMainKt$$ExternalSyntheticLambda3();
            case 19:
                return invoke$net$thunderbird$core$ui$designsystem$resources$String0_commonMainKt$$ExternalSyntheticLambda4();
            case 20:
                return invoke$net$thunderbird$core$ui$designsystem$resources$String0_commonMainKt$$ExternalSyntheticLambda5();
            case 21:
                return new StringResource("string:designsystem_molecule_swipeable_row_end_to_start_accessibility_description", ArraysKt___ArraysKt.toSet(new ResourceItem[]{new ResourceItem(Sink$CC.m("cs"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cs/strings.commonMain.cvr", 373L, 134L), new ResourceItem(Sink$CC.m("cy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-cy/strings.commonMain.cvr", 389L, 98L), new ResourceItem(Sink$CC.m("de"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-de/strings.commonMain.cvr", 389L, 134L), new ResourceItem(Sink$CC.m("el"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-el/strings.commonMain.cvr", 525L, 114L), new ResourceItem(Sink$CC.m("es"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-es/strings.commonMain.cvr", 405L, 146L), new ResourceItem(Sink$CC.m("et"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-et/strings.commonMain.cvr", 385L, 102L), new ResourceItem(Sink$CC.m("fr"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fr/strings.commonMain.cvr", 409L, 114L), new ResourceItem(Sink$CC.m("fy"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-fy/strings.commonMain.cvr", 385L, 98L), new ResourceItem(Sink$CC.m("ga"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ga/strings.commonMain.cvr", 409L, 102L), new ResourceItem(Sink$CC.m("hu"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-hu/strings.commonMain.cvr", 381L, 94L), new ResourceItem(Sink$CC.m("in"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-in/strings.commonMain.cvr", 393L, 98L), new ResourceItem(Sink$CC.m("it"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-it/strings.commonMain.cvr", 377L, 138L), new ResourceItem(Sink$CC.m("ja"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ja/strings.commonMain.cvr", 417L, 94L), new ResourceItem(Sink$CC.m("kk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-kk/strings.commonMain.cvr", 457L, 106L), new ResourceItem(Sink$CC.m("ko"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ko/strings.commonMain.cvr", 401L, 98L), new ResourceItem(Sink$CC.m("nl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nl/strings.commonMain.cvr", 397L, 98L), new ResourceItem(Sink$CC.m("nn"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-nn/strings.commonMain.cvr", 373L, 130L), new ResourceItem(Sink$CC.m("pl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pl/strings.commonMain.cvr", 373L, 134L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("pt"), new RegionQualifier("BR")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-pt-rBR/strings.commonMain.cvr", 385L, 134L), new ResourceItem(Sink$CC.m("ro"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ro/strings.commonMain.cvr", 373L, 102L), new ResourceItem(Sink$CC.m("ru"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-ru/strings.commonMain.cvr", 465L, 170L), new ResourceItem(Sink$CC.m("sl"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sl/strings.commonMain.cvr", 377L, 98L), new ResourceItem(Sink$CC.m("sq"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sq/strings.commonMain.cvr", 393L, 154L), new ResourceItem(Sink$CC.m("sv"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-sv/strings.commonMain.cvr", 377L, 138L), new ResourceItem(Sink$CC.m("uk"), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-uk/strings.commonMain.cvr", 461L, 106L), new ResourceItem(ArraysKt___ArraysKt.toSet(new Qualifier[]{new LanguageQualifier("zh"), new RegionQualifier("CN")}), "composeResources/net.thunderbird.core.ui.designsystem.resources/values-zh-rCN/strings.commonMain.cvr", 361L, 102L), new ResourceItem(EmptySet.INSTANCE, "composeResources/net.thunderbird.core.ui.designsystem.resources/values/strings.commonMain.cvr", 369L, 98L)}));
            case 22:
                return invoke$net$thunderbird$core$ui$designsystem$resources$String0_commonMainKt$$ExternalSyntheticLambda7();
            case 23:
                return new StringResource("string:designsystem_organism_subtitle_top_app_bar_up_description", Validate.setOf(new ResourceItem(EmptySet.INSTANCE, "composeResources/net.thunderbird.core.ui.designsystem.resources/values/strings.commonMain.cvr", 567L, 81L)));
            case 24:
                return null;
            case 25:
                return Updater.mutableStateOf$default(Boolean.FALSE);
            case 26:
                return new ParcelableSnapshotMutableIntState(0);
            case 27:
                SecretDebugSettingsRoute.Tab[] values = SecretDebugSettingsRoute.Tab.values();
                values.getClass();
                return new EnumSerializer("net.thunderbird.feature.debug.settings.navigation.SecretDebugSettingsRoute.Tab", values);
            case 28:
                return "init() called";
            default:
                return "Folder created";
        }
    }

    public /* synthetic */ ThemeSizesKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }
}
