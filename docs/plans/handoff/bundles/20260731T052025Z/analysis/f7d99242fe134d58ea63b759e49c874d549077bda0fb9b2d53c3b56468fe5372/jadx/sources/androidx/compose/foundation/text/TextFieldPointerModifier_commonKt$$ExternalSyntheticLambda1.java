package androidx.compose.foundation.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;

    public /* synthetic */ TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1(LegacyTextFieldState legacyTextFieldState, FocusRequester focusRequester, boolean z, boolean z2, TextFieldSelectionManager textFieldSelectionManager, OffsetMapping offsetMapping) {
        this.f$0 = legacyTextFieldState;
        this.f$1 = focusRequester;
        this.f$2 = z;
        this.f$3 = z2;
        this.f$4 = textFieldSelectionManager;
        this.f$5 = offsetMapping;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SoftwareKeyboardController softwareKeyboardController;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$5;
        Object obj3 = this.f$4;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj5;
                FocusRequester focusRequester = (FocusRequester) obj4;
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj3;
                OffsetMapping offsetMapping = (OffsetMapping) obj2;
                Offset offset = (Offset) obj;
                if (!legacyTextFieldState.getHasFocus()) {
                    FocusRequester.m418requestFocus3ESFkO8$default(focusRequester);
                } else if (!this.f$2 && (softwareKeyboardController = legacyTextFieldState.keyboardController) != null) {
                    ((DelegatingSoftwareKeyboardController) softwareKeyboardController).show();
                }
                if (legacyTextFieldState.getHasFocus() && this.f$3) {
                    if (legacyTextFieldState.getHandleState() == HandleState.Selection) {
                        textFieldSelectionManager.m310deselect_kEHs6E$foundation(offset);
                        break;
                    } else {
                        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
                        if (layoutResult != null) {
                            long j = offset.packedValue;
                            WeakCache weakCache = legacyTextFieldState.processor;
                            CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1 = legacyTextFieldState.onValueChange;
                            int transformedToOriginal = offsetMapping.transformedToOriginal(layoutResult.m281getOffsetForPosition3MmeM6k(j, true));
                            coreTextFieldKt$$ExternalSyntheticLambda1.invoke(TextFieldValue.m714copy3r_uNRQ$default((TextFieldValue) weakCache.values, null, ParagraphKt.TextRange(transformedToOriginal, transformedToOriginal), 5));
                            if (legacyTextFieldState.textDelegate.text.text.length() > 0) {
                                legacyTextFieldState.handleState$delegate.setValue(HandleState.Cursor);
                                break;
                            }
                        }
                    }
                }
                break;
            default:
                final DisplayFolder displayFolder = (DisplayFolder) obj4;
                final Function1 function1 = (Function1) obj3;
                final FolderNameFormatter folderNameFormatter = (FolderNameFormatter) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                final ImmutableList immutableList = ((DisplayTreeFolder) obj5).children;
                KoinModuleKt$$ExternalSyntheticLambda0 koinModuleKt$$ExternalSyntheticLambda0 = new KoinModuleKt$$ExternalSyntheticLambda0(22);
                int size = ((AbstractCollection) immutableList).getSize();
                Latch$await$2$2 latch$await$2$2 = new Latch$await$2$2(14, koinModuleKt$$ExternalSyntheticLambda0, immutableList);
                ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3 changelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3 = new ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3(7, immutableList);
                final boolean z = this.f$2;
                final boolean z2 = this.f$3;
                lazyListIntervalContent.items(size, latch$await$2$2, changelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3, new ComposableLambdaImpl(802480018, new Function4() { // from class: net.thunderbird.feature.navigation.drawer.dropdown.ui.folder.FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj6, Object obj7, Object obj8, Object obj9) {
                        int i2;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj6;
                        int intValue = ((Number) obj7).intValue();
                        Composer composer = (Composer) obj8;
                        int intValue2 = ((Number) obj9).intValue();
                        if ((intValue2 & 6) == 0) {
                            i2 = (((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2) | intValue2;
                        } else {
                            i2 = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            i2 |= ((GapComposer) composer).changed(intValue) ? 32 : 16;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                            DisplayTreeFolder displayTreeFolder = (DisplayTreeFolder) immutableList.get(intValue);
                            gapComposer.startReplaceGroup(684924973);
                            DisplayFolder displayFolder2 = displayTreeFolder.displayFolder;
                            if (displayFolder2 == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Null DisplayFolder for folder ", displayTreeFolder.displayName));
                                return null;
                            }
                            DisplayFolder displayFolder3 = displayFolder;
                            Options.Companion.FolderListItem(displayFolder2, function1, z, folderNameFormatter, displayFolder3 != null ? displayFolder3.getId() : null, null, z2, displayTreeFolder, null, 0, gapComposer, 16777216, 800);
                            gapComposer.end(false);
                        } else {
                            gapComposer.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, true));
                break;
        }
        return unit;
    }

    public /* synthetic */ TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1(DisplayTreeFolder displayTreeFolder, DisplayFolder displayFolder, Function1 function1, boolean z, FolderNameFormatter folderNameFormatter, boolean z2) {
        this.f$0 = displayTreeFolder;
        this.f$1 = displayFolder;
        this.f$4 = function1;
        this.f$2 = z;
        this.f$5 = folderNameFormatter;
        this.f$3 = z2;
    }
}
