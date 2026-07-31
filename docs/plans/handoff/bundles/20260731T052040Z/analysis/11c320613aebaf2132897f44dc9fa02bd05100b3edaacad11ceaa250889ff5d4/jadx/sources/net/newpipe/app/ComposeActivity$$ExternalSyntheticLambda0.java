package net.newpipe.app;

import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.room.RoomDatabase$closeBarrier$1;
import com.google.android.exoplayer2.RendererCapabilities;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.internal.StreamingJsonDecoder;
import kotlinx.serialization.json.internal.StringJsonLexer;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.json.internal.WriteModeKt;
import net.newpipe.app.navigation.Destination;
import net.newpipe.app.theme.Service;
import net.newpipe.app.theme.ServiceThemeKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComposeActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComposeActivity f$0;

    public /* synthetic */ ComposeActivity$$ExternalSyntheticLambda0(ComposeActivity composeActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = composeActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ComposeActivity composeActivity;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        int i2 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i3 = ComposeActivity.$r8$clinit;
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Json.Default r7 = Json.Default;
                    ComposeActivity composeActivity2 = this.f$0;
                    String stringExtra = composeActivity2.getIntent().getStringExtra("SCREEN");
                    stringExtra.getClass();
                    r7.getClass();
                    KSerializer serializer = Destination.Companion.serializer();
                    serializer.getClass();
                    StringJsonLexer StringJsonLexer = WriteModeKt.StringJsonLexer(r7, stringExtra);
                    Object decodeSerializableValue = new StreamingJsonDecoder(r7, WriteMode.OBJ, StringJsonLexer, serializer.getDescriptor(), null).decodeSerializableValue(serializer);
                    StringJsonLexer.expectEof();
                    Destination destination = (Destination) decodeSerializableValue;
                    boolean changedInstance = gapComposer.changedInstance(composeActivity2);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        composeActivity = composeActivity2;
                        RoomDatabase$closeBarrier$1 roomDatabase$closeBarrier$1 = new RoomDatabase$closeBarrier$1(0, composeActivity, ComposeActivity.class, "finish", "finish()V", 0, 4);
                        gapComposer.updateRememberedValue(roomDatabase$closeBarrier$1);
                        rememberedValue = roomDatabase$closeBarrier$1;
                    } else {
                        composeActivity = composeActivity2;
                    }
                    AppKt.App(destination, (Function0) ((FunctionReference) rememberedValue), Expect_jvmKt.rememberComposableLambda(-1030578072, new ComposeActivity$$ExternalSyntheticLambda0(composeActivity, i2), gapComposer), gapComposer, RendererCapabilities.MODE_SUPPORT_MASK);
                    break;
                }
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i4 = ComposeActivity.$r8$clinit;
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(1 & intValue2, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    View view = (View) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalView);
                    Service currentService = ServiceThemeKt.currentService(gapComposer2);
                    ComposeActivity composeActivity3 = this.f$0;
                    boolean changedInstance2 = gapComposer2.changedInstance(composeActivity3) | gapComposer2.changedInstance(view) | gapComposer2.changed(currentService.ordinal());
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ComposeActivity$$ExternalSyntheticLambda2(0, composeActivity3, view, currentService);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Updater.DisposableEffect(currentService, (Function1) rememberedValue2, gapComposer2);
                    break;
                }
        }
        return unit;
    }
}
