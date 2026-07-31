package kotlin.uuid;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.work.Operation$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.ui.messagelist.MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1;
import com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.ReversedList;
import kotlin.collections.ReversedList$listIterator$1;
import kotlin.collections.ReversedListReadOnly;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.HexExtensionsKt;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.JobKt;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import kotlinx.datetime.internal.format.parser.ParserOperation;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.UnconditionalModification;
import net.openid.appauth.AuthorizationManagementRequest;
import net.openid.appauth.AuthorizationRequest;
import net.openid.appauth.EndSessionRequest;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.AccountIdFactory;
import net.thunderbird.feature.account.avatar.Avatar;
import net.thunderbird.feature.account.avatar.ui.AvatarSize;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda16;
import net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenRenderer;
import net.thunderbird.feature.mail.message.list.ui.MessageListContract$ViewModel;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.MailDisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.UnifiedDisplayAccount;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import okhttp3.Cookie;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Node;
import org.jsoup.select.NodeVisitor;

/* loaded from: classes.dex */
public abstract class UuidKt {
    /* renamed from: AvatarLayout-1Kfb2uI, reason: not valid java name */
    public static final void m1006AvatarLayout1Kfb2uI(final long j, final long j2, final AvatarSize avatarSize, Modifier modifier, final Function0 function0, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        final Modifier modifier2;
        float f;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1242997107);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(j2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(avatarSize.ordinal()) ? 256 : 128;
        }
        int i3 = i2 | 3072;
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changedInstance(function0) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            int ordinal = avatarSize.ordinal();
            if (ordinal == 0) {
                gapComposer.startReplaceGroup(509828649);
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                gapComposer.end(false);
                f = 48.0f;
            } else {
                if (ordinal != 1) {
                    throw ViewSizeResolver.CC.m(gapComposer, 509826876, false);
                }
                gapComposer.startReplaceGroup(509830404);
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                gapComposer.end(false);
                f = 64.0f;
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(companion, f);
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.CircleShape;
            Modifier clip = ClipKt.clip(m234size3ABfNKs, roundedCornerShape);
            boolean z = function0 != null;
            boolean z2 = (i3 & 57344) == 16384;
            Object rememberedValue = gapComposer.rememberedValue();
            int i4 = 14;
            if (z2 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Handshake$$ExternalSyntheticLambda0(i4, function0);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Modifier m133borderxT4_qwU = ImageKt.m133borderxT4_qwU(ImageKt.m132backgroundbw27NRU(ImageKt.m136clickableoSLSa3U$default(clip, z, null, (Function0) rememberedValue, 14), j2, roundedCornerShape), 2.0f, j, roundedCornerShape);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j3 = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m133borderxT4_qwU);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl.invoke(BoxScopeInstance.INSTANCE, gapComposer, Integer.valueOf(((i3 >> 12) & 112) | 6));
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: net.thunderbird.feature.account.avatar.ui.AvatarLayoutKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    UuidKt.m1006AvatarLayout1Kfb2uI(j, j2, avatarSize, modifier2, function0, composableLambdaImpl, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: ColorChip-Zi-j2fk, reason: not valid java name */
    public static final void m1007ColorChipZij2fk(int i, long j, Composer composer, Modifier modifier) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1396825953);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(20.0f) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(3.0f) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(j) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            SolidColor solidColor = new SolidColor(j);
            Modifier m235sizeVpY3zN4 = SizeKt.m235sizeVpY3zN4(modifier, 3.0f, 20.0f);
            boolean changed = gapComposer.changed(solidColor) | ((i2 & 896) == 256);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new ForwardingFileSystem$$ExternalSyntheticLambda0(5, solidColor);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ImageKt.Canvas(0, gapComposer, m235sizeVpY3zN4, (Function1) rememberedValue);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChangelogScreenKt$$ExternalSyntheticLambda16(modifier, j, i);
        }
    }

    public static final void Render$default(Function2 function2, Modifier modifier, MessageListContract$ViewModel messageListContract$ViewModel, Function1 function1, MessageListScreenRenderer messageListScreenRenderer, Composer composer, int i) {
        Modifier modifier2;
        Modifier modifier3;
        function2.getClass();
        messageListScreenRenderer.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-790292183);
        int i2 = i | (gapComposer.changedInstance(function2) ? 4 : 2) | 48 | (gapComposer.changed(messageListContract$ViewModel) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024) | (gapComposer.changed(messageListScreenRenderer) ? 16384 : 8192);
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                modifier3 = Modifier.Companion.$$INSTANCE;
            } else {
                gapComposer.skipToGroupEnd();
                modifier3 = modifier;
            }
            gapComposer.endDefaults();
            int i4 = 65534 & i2;
            modifier3.getClass();
            messageListContract$ViewModel.getClass();
            function1.getClass();
            gapComposer.startReplaceGroup(-1536229292);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new DefaultMessageListScope();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            DefaultMessageListScope defaultMessageListScope = (DefaultMessageListScope) rememberedValue;
            int i5 = i4 >> 6;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(messageListContract$ViewModel.getState(), gapComposer);
            boolean z = (((i5 & 14) ^ 6) > 4 && gapComposer.changedInstance(messageListContract$ViewModel)) || (i5 & 6) == 4;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1(messageListContract$ViewModel, i3);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function1 function12 = (Function1) rememberedValue2;
            Updater.LaunchedEffect(gapComposer, messageListContract$ViewModel.effect, new StringResourcesKt$stringResource$str$3$1(messageListContract$ViewModel, (Continuation) null, function2, defaultMessageListScope, 7));
            collectAsStateWithLifecycle.getClass();
            function12.getClass();
            modifier2 = modifier3;
            Render$default((MessageListState) collectAsStateWithLifecycle.getValue(), function12, modifier2, function1, messageListScreenRenderer, defaultMessageListScope, gapComposer, (i2 & 7168) | 384 | (57344 & i2));
            gapComposer.end(false);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(function2, modifier2, messageListContract$ViewModel, function1, messageListScreenRenderer, i, 21);
        }
    }

    public static final void SelectDialogView(SettingValue.Select select, Function1 function1, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        Object obj;
        select.getClass();
        SettingValue.Select.SelectOption selectOption = select.value;
        function1.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1789303012);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(select) : gapComposer.changedInstance(select) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(Modifier.Companion.$$INSTANCE) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(select.options);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                Iterator<E> it = ((ImmutableList) mutableState.getValue()).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    } else {
                        obj = it.next();
                        if (Intrinsics.areEqual(((SettingValue.Select.SelectOption) obj).id, selectOption.id)) {
                            break;
                        }
                    }
                }
                SettingValue.Select.SelectOption selectOption2 = (SettingValue.Select.SelectOption) obj;
                if (selectOption2 != null) {
                    selectOption = selectOption2;
                }
                rememberedValue2 = Updater.mutableStateOf$default(selectOption);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState2 = (MutableState) rememberedValue2;
            String str = (String) select.title.invoke();
            ImageVector imageVector = (ImageVector) select.icon.invoke();
            boolean z = ((i2 & 112) == 32) | ((i2 & 14) == 4 || ((i2 & 8) != 0 && gapComposer.changedInstance(select)));
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new ConnectPlan$$ExternalSyntheticLambda0(function1, select, mutableState2, 15);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            int i3 = i2 << 3;
            Jsoup.SettingDialogLayout(str, imageVector, (Function0) rememberedValue3, function0, function02, false, Expect_jvmKt.rememberComposableLambda(1055496956, new ArchiveOperations$$ExternalSyntheticLambda2(select, mutableState2, mutableState, 10), gapComposer), gapComposer, (i3 & 7168) | 12582912 | (57344 & i3) | (i3 & 458752), 64);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0((Object) select, function1, function0, (Object) function02, i, 12);
        }
    }

    public static final Set access$getActionsWithoutTap(InAppNotification inAppNotification) {
        Set actions = inAppNotification.getActions();
        ArrayList arrayList = new ArrayList();
        for (Object obj : actions) {
            if (!(((NotificationAction) obj) instanceof NotificationAction.Tap)) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.toSet(arrayList);
    }

    public static final ParserStructure concat(List list) {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        EmptyList emptyList = EmptyList.INSTANCE;
        ref$ObjectRef.element = new ParserStructure(emptyList, emptyList);
        ArrayList arrayList = new ArrayList();
        Iterator it = new ReversedListReadOnly(list).iterator();
        while (true) {
            ListIterator listIterator = (ListIterator) ((ReversedList$listIterator$1) it).delegateIterator;
            if (!listIterator.hasPrevious()) {
                concat$flushAccumulatedOperations(arrayList, ref$ObjectRef);
                return (ParserStructure) ref$ObjectRef.element;
            }
            ParserStructure parserStructure = (ParserStructure) listIterator.previous();
            if (parserStructure.followedBy.isEmpty()) {
                arrayList.add(parserStructure.operations);
            } else {
                concat$flushAccumulatedOperations(arrayList, ref$ObjectRef);
                ref$ObjectRef.element = concat$simplifyAndAppend(parserStructure, (ParserStructure) ref$ObjectRef.element);
            }
        }
    }

    public static final void concat$flushAccumulatedOperations(ArrayList arrayList, Ref$ObjectRef ref$ObjectRef) {
        if (arrayList.isEmpty()) {
            return;
        }
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        Iterator it = new ReversedList(arrayList).iterator();
        while (true) {
            ListIterator listIterator = (ListIterator) ((ReversedList$listIterator$1) it).delegateIterator;
            if (!listIterator.hasPrevious()) {
                ref$ObjectRef.element = concat$simplifyAndAppend(new ParserStructure(IntOffsetKt.build(createListBuilder), EmptyList.INSTANCE), (ParserStructure) ref$ObjectRef.element);
                arrayList.clear();
                return;
            }
            createListBuilder.addAll((List) listIterator.previous());
        }
    }

    public static final ParserStructure concat$mergeOperations(List list, ArrayList arrayList, ArrayList arrayList2, ParserStructure parserStructure) {
        List list2 = parserStructure.operations;
        ParserOperation parserOperation = (ParserOperation) CollectionsKt.firstOrNull(list2);
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        createListBuilder.addAll(list);
        if (arrayList == null) {
            createListBuilder.addAll(list2);
        } else if (parserOperation instanceof NumberSpanParserOperation) {
            createListBuilder.add(new NumberSpanParserOperation(CollectionsKt.plus((Collection) arrayList, (Iterable) ((NumberSpanParserOperation) parserOperation).consumers)));
            int i = 1;
            int size = list2.size() - 1;
            if (1 <= size) {
                while (true) {
                    createListBuilder.add(list2.get(i));
                    if (i == size) {
                        break;
                    }
                    i++;
                }
            }
        } else {
            createListBuilder.add(new NumberSpanParserOperation(arrayList));
            createListBuilder.addAll(list2);
        }
        createListBuilder.addAll(arrayList2);
        return new ParserStructure(IntOffsetKt.build(createListBuilder), parserStructure.followedBy);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.util.List] */
    public static final ParserStructure concat$simplifyAndAppend(ParserStructure parserStructure, ParserStructure parserStructure2) {
        List listOf;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = null;
        for (ParserOperation parserOperation : parserStructure.operations) {
            if (parserOperation instanceof NumberSpanParserOperation) {
                if (arrayList3 != null) {
                    arrayList3.addAll(((NumberSpanParserOperation) parserOperation).consumers);
                } else {
                    arrayList3 = CollectionsKt.toMutableList((Collection) ((NumberSpanParserOperation) parserOperation).consumers);
                }
            } else if (parserOperation instanceof UnconditionalModification) {
                arrayList2.add(parserOperation);
            } else {
                if (arrayList3 != null) {
                    arrayList.add(new NumberSpanParserOperation(arrayList3));
                    arrayList.addAll(arrayList2);
                    arrayList2.clear();
                    arrayList3 = null;
                }
                arrayList.add(parserOperation);
            }
        }
        List list = parserStructure.followedBy;
        ArrayList arrayList4 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ParserStructure concat$simplifyAndAppend = concat$simplifyAndAppend((ParserStructure) it.next(), parserStructure2);
            if (concat$simplifyAndAppend.operations.isEmpty()) {
                listOf = concat$simplifyAndAppend.followedBy;
                if (listOf.isEmpty()) {
                    listOf = IntOffsetKt.listOf(concat$simplifyAndAppend);
                }
            } else {
                listOf = IntOffsetKt.listOf(concat$simplifyAndAppend);
            }
            CollectionsKt.addAll(listOf, arrayList4);
        }
        boolean isEmpty = arrayList4.isEmpty();
        ArrayList arrayList5 = arrayList4;
        if (isEmpty) {
            if (!parserStructure2.operations.isEmpty()) {
                return concat$mergeOperations(arrayList, arrayList3, arrayList2, parserStructure2);
            }
            arrayList5 = parserStructure2.followedBy;
        }
        if ((arrayList3 != null || arrayList.isEmpty()) && (arrayList5 == null || !arrayList5.isEmpty())) {
            Iterator it2 = arrayList5.iterator();
            while (it2.hasNext()) {
                if (CollectionsKt.firstOrNull(((ParserStructure) it2.next()).operations) instanceof NumberSpanParserOperation) {
                    ArrayList arrayList6 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList5, 10));
                    Iterator it3 = arrayList5.iterator();
                    while (it3.hasNext()) {
                        arrayList6.add(concat$mergeOperations(EmptyList.INSTANCE, arrayList3, arrayList2, (ParserStructure) it3.next()));
                    }
                    return new ParserStructure(arrayList, arrayList6);
                }
            }
        }
        if (arrayList3 != null) {
            arrayList.add(new NumberSpanParserOperation(arrayList3));
        }
        arrayList.addAll(arrayList2);
        return new ParserStructure(arrayList, arrayList5);
    }

    public static final void formatBytesInto(long j, byte[] bArr, int i, int i2, int i3) {
        int i4 = 7 - i2;
        int i5 = 8 - i3;
        if (i5 > i4) {
            return;
        }
        while (true) {
            int i6 = HexExtensionsKt.BYTE_TO_LOWER_CASE_HEX_DIGITS[(int) ((j >> (i4 << 3)) & 255)];
            int i7 = i + 1;
            bArr[i] = (byte) (i6 >> 8);
            i += 2;
            bArr[i7] = (byte) i6;
            if (i4 == i5) {
                return;
            } else {
                i4--;
            }
        }
    }

    public static CoroutineContext.Element get(CoroutineContext.Element element, CoroutineContext.Key key) {
        key.getClass();
        if (Intrinsics.areEqual(element.getKey(), key)) {
            return element;
        }
        return null;
    }

    public static final Avatar getDisplayAccountAvatar(DisplayAccount displayAccount) {
        displayAccount.getClass();
        if (displayAccount instanceof UnifiedDisplayAccount) {
            return new Avatar.Icon("group");
        }
        if (displayAccount instanceof MailDisplayAccount) {
            return ((MailDisplayAccount) displayAccount).avatar;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static final long getDisplayAccountColor(DisplayAccount displayAccount, Composer composer) {
        displayAccount.getClass();
        if (displayAccount instanceof UnifiedDisplayAccount) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startReplaceGroup(2079260574);
            long j = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSurfaceVariant;
            gapComposer.end(false);
            return j;
        }
        if (!(displayAccount instanceof MailDisplayAccount)) {
            throw ViewSizeResolver.CC.m((GapComposer) composer, -1734043954, false);
        }
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startReplaceGroup(2079351435);
        gapComposer2.end(false);
        return ColorKt.Color(((MailDisplayAccount) displayAccount).color);
    }

    public static final String getDisplayAccountName(DisplayAccount displayAccount, Composer composer) {
        displayAccount.getClass();
        if (displayAccount instanceof UnifiedDisplayAccount) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startReplaceGroup(712041822);
            String stringResource = Operation$State.stringResource(gapComposer, R.string.navigation_drawer_dropdown_unified_account_title);
            gapComposer.end(false);
            return stringResource;
        }
        if (!(displayAccount instanceof MailDisplayAccount)) {
            throw ViewSizeResolver.CC.m((GapComposer) composer, 1131346182, false);
        }
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startReplaceGroup(712170875);
        gapComposer2.end(false);
        return ((MailDisplayAccount) displayAccount).name;
    }

    public static final long getLongAt(int i, byte[] bArr) {
        return (bArr[i + 7] & 255) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    public static final long getOutboxFolderIdSync(DefaultOutboxFolderManager defaultOutboxFolderManager, String str) {
        defaultOutboxFolderManager.getClass();
        str.getClass();
        return ((Number) JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new OutboxFolderManager$getOutboxFolderIdSync$1(defaultOutboxFolderManager, AccountIdFactory.INSTANCE.of(str), (Continuation) null, 0))).longValue();
    }

    public static CoroutineContext minusKey(CoroutineContext.Element element, CoroutineContext.Key key) {
        key.getClass();
        return Intrinsics.areEqual(element.getKey(), key) ? EmptyCoroutineContext.INSTANCE : element;
    }

    public static CoroutineContext plus(CoroutineContext.Element element, CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        return coroutineContext == EmptyCoroutineContext.INSTANCE ? element : (CoroutineContext) coroutineContext.fold(element, new KoinModuleKt$$ExternalSyntheticLambda1(21));
    }

    public static AuthorizationManagementRequest requestFrom(String str, String str2) {
        JSONObject jSONObject = new JSONObject(str);
        if ("authorization".equals(str2)) {
            return AuthorizationRequest.jsonDeserialize(jSONObject);
        }
        if ("end_session".equals(str2)) {
            return new EndSessionRequest(LocalStore.AnonymousClass7.fromJson(jSONObject.getJSONObject("configuration")), AtomicFU.getStringIfDefined(jSONObject, "id_token_hint"), AtomicFU.getUriIfDefined(jSONObject, "post_logout_redirect_uri"), AtomicFU.getStringIfDefined(jSONObject, "state"), AtomicFU.getStringIfDefined(jSONObject, "ui_locales"), AtomicFU.getStringMap(jSONObject, "additionalParameters"));
        }
        UriKt$$ExternalSyntheticBUOutline0.m("No AuthorizationManagementRequest found matching to this json schema");
        return null;
    }

    public static void traverse(NodeVisitor nodeVisitor, Node node) {
        Validate.notNull(node);
        Node node2 = node;
        int i = 0;
        while (node2 != null) {
            Node node3 = node2.parentNode;
            int childNodeSize = node3 != null ? node3.childNodeSize() : 0;
            Node nextSibling = node2.nextSibling();
            nodeVisitor.head(node2, i);
            if (node3 != null && node2.parentNode == null) {
                if (childNodeSize == node3.childNodeSize()) {
                    node2 = node3.childNode(node2.siblingIndex);
                } else if (nextSibling == null) {
                    i--;
                    node2 = node3;
                } else {
                    node2 = nextSibling;
                }
            }
            if (node2.childNodeSize() > 0) {
                node2 = node2.childNode(0);
                i++;
            } else {
                while (node2.nextSibling() == null && i > 0) {
                    nodeVisitor.tail(node2, i);
                    node2 = node2.parentNode;
                    i--;
                }
                nodeVisitor.tail(node2, i);
                if (node2 == node) {
                    return;
                } else {
                    node2 = node2.nextSibling();
                }
            }
        }
    }

    public static final void uuidThrowUnexpectedCharacterException(int i, String str, String str2) {
        str.getClass();
        throw new IllegalArgumentException("Expected " + str2 + " at index " + i + ", but was '" + str.charAt(i) + '\'');
    }

    public abstract List clean(String str, List list);

    public static final void Render$default(MessageListState messageListState, Function1 function1, Modifier modifier, Function1 function12, MessageListScreenRenderer messageListScreenRenderer, DefaultMessageListScope defaultMessageListScope, Composer composer, int i) {
        int i2;
        messageListState.getClass();
        messageListScreenRenderer.getClass();
        defaultMessageListScope.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1733620998);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(messageListState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function12) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= (32768 & i) == 0 ? gapComposer.changed(messageListScreenRenderer) : gapComposer.changedInstance(messageListScreenRenderer) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed(defaultMessageListScope) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            int i3 = (i2 >> 15) & 14;
            int i4 = i2 << 3;
            int i5 = (i4 & 458752) | i3 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i4 & 57344);
            gapComposer.startReplaceGroup(-8531851);
            int i6 = (i5 & 14) | ((i5 >> 9) & 112);
            int i7 = i5 << 3;
            Cookie.Companion.MessageListPage(defaultMessageListScope, function12, messageListState, function1, modifier, gapComposer, i6 | (i7 & 896) | (i7 & 7168) | (i7 & 57344));
            gapComposer.end(false);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(messageListState, function1, modifier, function12, messageListScreenRenderer, defaultMessageListScope, i, 12);
        }
    }
}
