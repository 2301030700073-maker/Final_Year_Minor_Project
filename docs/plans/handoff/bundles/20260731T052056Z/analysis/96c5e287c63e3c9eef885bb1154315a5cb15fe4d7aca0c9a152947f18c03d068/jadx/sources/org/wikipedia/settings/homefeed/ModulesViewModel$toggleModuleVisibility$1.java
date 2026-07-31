package org.wikipedia.settings.homefeed;

import androidx.compose.foundation.internal.ClipboardUtils;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.platform.AndroidClipboard;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.SettingsRepository;
import org.wikipedia.settings.SettingsRepository$addHiddenCard$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ModulesViewModel$toggleModuleVisibility$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ boolean $isVisible;
    public final /* synthetic */ Object $moduleKey;
    public final /* synthetic */ int $r8$classId = 1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModulesViewModel$toggleModuleVisibility$1(TextFieldSelectionManager textFieldSelectionManager, boolean z, Continuation continuation) {
        super(2, continuation);
        this.$moduleKey = textFieldSelectionManager;
        this.$isVisible = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        boolean z = this.$isVisible;
        Object obj2 = this.$moduleKey;
        switch (i) {
            case 0:
                return new ModulesViewModel$toggleModuleVisibility$1(z, (String) obj2, continuation);
            default:
                return new ModulesViewModel$toggleModuleVisibility$1((TextFieldSelectionManager) obj2, z, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((ModulesViewModel$toggleModuleVisibility$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Clipboard clipboard;
        int i = this.$r8$classId;
        boolean z = this.$isVisible;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$moduleKey;
        int i2 = 1;
        AnnotatedString annotatedString = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        switch (i) {
            case 0:
                String str = (String) obj2;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1 || i3 == 2) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                int i4 = 3;
                if (z) {
                    SettingsRepository settingsRepository = SettingsRepository.INSTANCE;
                    this.label = 1;
                    Object updateData = SettingsRepository.dataStore.updateData(new SimpleChannelFlowKt$simpleChannelFlow$1((Function2) new SettingsRepository$addHiddenCard$2(str, i4, objArr4 == true ? 1 : 0), (Continuation) (objArr3 == true ? 1 : 0), i4), this);
                    if (updateData != coroutineSingletons) {
                        updateData = unit;
                    }
                    if (updateData != coroutineSingletons) {
                        return unit;
                    }
                } else {
                    SettingsRepository settingsRepository2 = SettingsRepository.INSTANCE;
                    this.label = 2;
                    Object updateData2 = SettingsRepository.dataStore.updateData(new SimpleChannelFlowKt$simpleChannelFlow$1((Function2) new SettingsRepository$addHiddenCard$2(str, i2, objArr2 == true ? 1 : 0), (Continuation) (objArr == true ? 1 : 0), i4), this);
                    if (updateData2 != coroutineSingletons) {
                        updateData2 = unit;
                    }
                    if (updateData2 != coroutineSingletons) {
                        return unit;
                    }
                }
                return coroutineSingletons;
            default:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj2;
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 != 0) {
                    if (i5 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                if (!TextRange.m641getCollapsedimpl(textFieldSelectionManager.getValue$foundation().selection)) {
                    annotatedString = TuplesKt.getSelectedText(textFieldSelectionManager.getValue$foundation());
                    if (z) {
                        int m643getMaximpl = TextRange.m643getMaximpl(textFieldSelectionManager.getValue$foundation().selection);
                        textFieldSelectionManager.onValueChange.invoke(TextFieldSelectionManager.m239createTextFieldValueFDrldGo(textFieldSelectionManager.getValue$foundation().annotatedString, ParagraphKt.TextRange(m643getMaximpl, m643getMaximpl)));
                        textFieldSelectionManager.setHandleState(HandleState.None);
                    }
                }
                if (annotatedString == null || (clipboard = textFieldSelectionManager.clipboard) == null) {
                    return unit;
                }
                ClipEntry clipEntry = ClipboardUtils.toClipEntry(annotatedString);
                this.label = 1;
                ((AndroidClipboard) clipboard).setClipEntry(clipEntry);
                return unit == coroutineSingletons2 ? coroutineSingletons2 : unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModulesViewModel$toggleModuleVisibility$1(boolean z, String str, Continuation continuation) {
        super(2, continuation);
        this.$isVisible = z;
        this.$moduleKey = str;
    }
}
