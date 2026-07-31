package com.fsck.k9.ui.messagelist;

import android.content.res.Resources;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.room.util.RelationUtil;
import androidx.work.Operation$State;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Error;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListFragmentKt$$ExternalSyntheticLambda1 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Function f$3;

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda1(boolean z, Object obj, Object obj2, Function function, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
        this.f$1 = obj;
        this.f$2 = obj2;
        this.f$3 = function;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        String buildErrorString;
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        boolean z = this.f$0;
        Unit unit = Unit.INSTANCE;
        Function function = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        switch (i) {
            case 0:
                ImmutableSet immutableSet = (ImmutableSet) obj5;
                SortCriteria sortCriteria = (SortCriteria) obj4;
                Function1 function1 = (Function1) function;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changed = gapComposer.changed(sortCriteria);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new MessageListFragment$$ExternalSyntheticLambda3(sortCriteria, 1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    MessageListLoaderKt.SecondarySortOptions(this.f$0, immutableSet, (Function1) rememberedValue, function1, null, gapComposer, 0);
                    break;
                }
            case 1:
                ServerValidationContract$State serverValidationContract$State = (ServerValidationContract$State) obj5;
                Resources resources = (Resources) obj4;
                Function1 function12 = (Function1) function;
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                lazyItemScopeImpl.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(lazyItemScopeImpl) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    String stringResource = Operation$State.stringResource(gapComposer2, z ? R.string.account_server_validation_incoming_loading_error : R.string.account_server_validation_outgoing_loading_error);
                    ServerValidationContract$Error serverValidationContract$Error = serverValidationContract$State.error;
                    serverValidationContract$Error.getClass();
                    resources.getClass();
                    if (!(serverValidationContract$Error instanceof ServerValidationContract$Error.CertificateError)) {
                        if (serverValidationContract$Error instanceof ServerValidationContract$Error.AuthenticationError) {
                            buildErrorString = Util.buildErrorString(resources, R.string.account_server_validation_error_authentication, R.string.account_common_error_server_message, ((ServerValidationContract$Error.AuthenticationError) serverValidationContract$Error).serverMessage);
                        } else if (serverValidationContract$Error instanceof ServerValidationContract$Error.NetworkError) {
                            buildErrorString = Util.buildErrorString(resources, R.string.account_server_validation_error_network, R.string.account_server_validation_error_details, ((ServerValidationContract$Error.NetworkError) serverValidationContract$Error).exception.getMessage());
                        } else if (serverValidationContract$Error instanceof ServerValidationContract$Error.ServerError) {
                            buildErrorString = Util.buildErrorString(resources, R.string.account_server_validation_error_server, R.string.account_common_error_server_message, ((ServerValidationContract$Error.ServerError) serverValidationContract$Error).serverMessage);
                        } else if (serverValidationContract$Error instanceof ServerValidationContract$Error.UnknownError) {
                            buildErrorString = Util.buildErrorString(resources, R.string.account_server_validation_error_unknown, R.string.account_server_validation_error_details, ((ServerValidationContract$Error.UnknownError) serverValidationContract$Error).message);
                        } else if (serverValidationContract$Error.equals(ServerValidationContract$Error.ClientCertificateExpired.INSTANCE)) {
                            buildErrorString = resources.getString(R.string.account_server_validation_error_client_certificate_expired);
                            buildErrorString.getClass();
                        } else if (serverValidationContract$Error.equals(ServerValidationContract$Error.ClientCertificateRetrievalFailure.INSTANCE)) {
                            buildErrorString = resources.getString(R.string.account_server_validation_error_client_certificate_retrieval_failure);
                            buildErrorString.getClass();
                        } else if (serverValidationContract$Error instanceof ServerValidationContract$Error.MissingServerCapabilityError) {
                            buildErrorString = Util.buildErrorString(resources, R.string.account_server_validation_error_missing_server_capability, R.string.account_server_validation_error_missing_server_capability_details, ((ServerValidationContract$Error.MissingServerCapabilityError) serverValidationContract$Error).capabilityName);
                        } else {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                        }
                        String str = buildErrorString;
                        boolean changed2 = gapComposer2.changed(function12);
                        Object rememberedValue2 = gapComposer2.rememberedValue();
                        if (changed2 || rememberedValue2 == neverEqualPolicy) {
                            rememberedValue2 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(19, function12);
                            gapComposer2.updateRememberedValue(rememberedValue2);
                        }
                        RelationUtil.ErrorItem(lazyItemScopeImpl, stringResource, null, str, (Function0) rememberedValue2, gapComposer2, intValue2 & 14);
                        break;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Handle CertificateError using ServerCertificateErrorScreen");
                    }
                    break;
                }
            default:
                String str2 = (String) obj5;
                MessageItemAccountIndicator messageItemAccountIndicator = (MessageItemAccountIndicator) obj4;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) function;
                RowScope rowScope = (RowScope) obj;
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                rowScope.getClass();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= ((GapComposer) composer3).changed(rowScope) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 19) != 18)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                    Modifier m225defaultMinSizeVpY3zN4$default = SizeKt.m225defaultMinSizeVpY3zN4$default(z ? SizeKt.FillWholeMaxWidth : rowScope.weight(Modifier.Companion.$$INSTANCE, 1.0f), 0.0f, 20.0f, 1);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, vertical, gapComposer3, 48);
                    long j = gapComposer3.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, m225defaultMinSizeVpY3zN4$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m380setimpl(gapComposer3, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer3, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Color color = messageItemAccountIndicator != null ? new Color(messageItemAccountIndicator.color) : null;
                    if (color != null) {
                        gapComposer3.startReplaceGroup(-1089534325);
                        MessageBodyContentKt.m1037AccountIndicatorIcon3JVO9M(0, color.value, gapComposer3, null);
                        gapComposer3.end(false);
                    } else {
                        gapComposer3.startReplaceGroup(-1089461289);
                        gapComposer3.end(false);
                    }
                    composableLambdaImpl.invoke((Object) gapComposer3, (Object) 0);
                    gapComposer3.end(true);
                    RelationUtil.m809TextTitleSmallXl4FiYE(str2, rowScope.align(), 0L, 3, 1, gapComposer3, 221184, 12);
                    break;
                }
        }
        return unit;
    }
}
