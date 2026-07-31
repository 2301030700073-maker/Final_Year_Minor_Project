package coil3.disk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.view.PreviewView;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.ModalBottomSheetDialogWrapper;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.NestedMovableContent;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.SingleSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.State;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.TypefaceRequest;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteAllCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextInCodePointsCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.SetComposingRegionCommand;
import androidx.compose.ui.text.input.SetComposingTextCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda0;
import androidx.datastore.core.DataStoreImpl;
import androidx.datastore.core.FileStorageConnection;
import androidx.datastore.core.Final;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.room.RoomConnectionManager;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.webkit.internal.ApiHelperForP;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderOption;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderOptions;
import app.k9mail.feature.account.edit.navigation.AccountEditRoute;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$Event;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewModel;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$FormState;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$Event;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel;
import app.k9mail.feature.settings.p000import.ui.AppInfo;
import app.k9mail.feature.settings.p000import.ui.AppVersion;
import app.k9mail.feature.settings.p000import.ui.ImportAppFetcher;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.request.ImageRequestsKt;
import coil3.transform.Transformation;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.ClosedFloatRange;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.validation.input.NumberInputField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DiskLruCache$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DiskLruCache$$ExternalSyntheticLambda0(EditCommand editCommand, WeakCache weakCache) {
        this.$r8$classId = 15;
        this.f$0 = editCommand;
    }

    private final Object invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda1(Object obj) {
        SnapshotStateObserver snapshotStateObserver = (SnapshotStateObserver) this.f$0;
        synchronized (snapshotStateObserver.observedScopeMapsLock) {
            SnapshotStateObserver.ObservedScopeMap observedScopeMap = snapshotStateObserver.currentMap;
            observedScopeMap.getClass();
            Object obj2 = observedScopeMap.currentScope;
            obj2.getClass();
            int i = observedScopeMap.currentToken;
            MutableObjectIntMap mutableObjectIntMap = observedScopeMap.currentScopeReads;
            if (mutableObjectIntMap == null) {
                mutableObjectIntMap = new MutableObjectIntMap();
                observedScopeMap.currentScopeReads = mutableObjectIntMap;
                observedScopeMap.scopeToValues.set(obj2, mutableObjectIntMap);
            }
            observedScopeMap.recordRead(obj, i, obj2, mutableObjectIntMap);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Unit newJournalWriter$lambda$0;
        String concat;
        StringBuilder sb;
        int i;
        CharSequence transformations$lambda$0$0;
        switch (this.$r8$classId) {
            case 0:
                newJournalWriter$lambda$0 = DiskLruCache.newJournalWriter$lambda$0((DiskLruCache) this.f$0, (IOException) obj);
                return newJournalWriter$lambda$0;
            case 1:
                DrawScope drawScope = (DrawScope) obj;
                long j = ((Color) ((State) this.f$0).getValue()).value;
                if (!Color.m482equalsimpl0(j, Color.Unspecified)) {
                    Modifier.CC.m402drawRectnJ9OG0$default(drawScope, j, 0L, 0.0f, null, 126);
                }
                return Unit.INSTANCE;
            case 2:
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj;
                float floatValue = ((Number) ((Animatable) this.f$0).getValue()).floatValue();
                float calculatePredictiveBackScaleX = ModalBottomSheetKt.calculatePredictiveBackScaleX(reusableGraphicsLayerScope, floatValue);
                float calculatePredictiveBackScaleY = ModalBottomSheetKt.calculatePredictiveBackScaleY(reusableGraphicsLayerScope, floatValue);
                reusableGraphicsLayerScope.setScaleY(calculatePredictiveBackScaleY != 0.0f ? calculatePredictiveBackScaleX / calculatePredictiveBackScaleY : 1.0f);
                reusableGraphicsLayerScope.m511setTransformOrigin__ExYCQ(ModalBottomSheetKt.PredictiveBackChildTransformOrigin);
                return Unit.INSTANCE;
            case 3:
                ModalBottomSheetDialogWrapper modalBottomSheetDialogWrapper = (ModalBottomSheetDialogWrapper) this.f$0;
                modalBottomSheetDialogWrapper.show();
                return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(10, modalBottomSheetDialogWrapper);
            case 4:
                TextLinkStyles textLinkStyles = (TextLinkStyles) this.f$0;
                AnnotatedString.Range range = (AnnotatedString.Range) obj;
                AnnotatedString.Annotation annotation = (AnnotatedString.Annotation) range.item;
                if (annotation instanceof LinkAnnotation.Url) {
                    LinkAnnotation.Url url = (LinkAnnotation.Url) annotation;
                    if (url.styles == null) {
                        return AnnotatedString.Range.copy$default(range, new LinkAnnotation.Url(url.url, textLinkStyles), 0, 14);
                    }
                }
                if (!(annotation instanceof LinkAnnotation.Clickable)) {
                    return range;
                }
                LinkAnnotation.Clickable clickable = (LinkAnnotation.Clickable) annotation;
                return clickable.styles == null ? AnnotatedString.Range.copy$default(range, new LinkAnnotation.Clickable(clickable.tag, textLinkStyles), 0, 14) : range;
            case 5:
                return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(11, (TooltipStateImpl) this.f$0);
            case 6:
                FloatProducer floatProducer = (FloatProducer) this.f$0;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                if (floatProducer.invoke() > 0.0f) {
                    ProgressBarRangeInfo progressBarRangeInfo = new ProgressBarRangeInfo(floatProducer.invoke(), new ClosedFloatRange(1.0f));
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                    SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.ProgressBarRangeInfo;
                    KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[1];
                    semanticsPropertyReceiver.set(semanticsPropertyKey, progressBarRangeInfo);
                }
                return Unit.INSTANCE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Boolean.valueOf(((NestedMovableContent) obj).container == ((MovableContentStateReference) this.f$0));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((CompositionImpl) this.f$0).recordReadOf(obj);
                return Unit.INSTANCE;
            case 9:
                Recomposer recomposer = (Recomposer) this.f$0;
                Throwable th = (Throwable) obj;
                CancellationException CancellationException = JobKt.CancellationException("Recomposer effect job completed", th);
                synchronized (recomposer.stateLock) {
                    try {
                        Job job = recomposer.runnerJob;
                        if (job != null) {
                            StateFlowImpl stateFlowImpl = recomposer._state;
                            Recomposer.State state = Recomposer.State.ShuttingDown;
                            stateFlowImpl.getClass();
                            stateFlowImpl.updateState(null, state);
                            job.cancel(CancellationException);
                            recomposer.workContinuation = null;
                            job.invokeOnCompletion(new Navigator$$ExternalSyntheticLambda1(26, recomposer, th));
                        } else {
                            recomposer.closeCause = CancellationException;
                            StateFlowImpl stateFlowImpl2 = recomposer._state;
                            Recomposer.State state2 = Recomposer.State.ShutDown;
                            stateFlowImpl2.getClass();
                            stateFlowImpl2.updateState(null, state2);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return Unit.INSTANCE;
            case 10:
                SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) this.f$0;
                SendChannel sendChannel = singleSubscriptionSnapshotFlowManager.subscribedChannel;
                sendChannel.getClass();
                if (!Intrinsics.areEqual(singleSubscriptionSnapshotFlowManager.subscribedChannel, sendChannel)) {
                    PreconditionsKt.throwIllegalStateException("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
                }
                MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.workingWatchSet;
                Object obj2 = singleSubscriptionSnapshotFlowManager.workingSoleWatchedObject;
                if (mutableScatterSet != null) {
                    if (obj2 != null) {
                        PreconditionsKt.throwIllegalStateException("workingSoleWatchedObject must be null when workingWatchSet is non-null");
                    }
                    mutableScatterSet.add(obj);
                } else if (obj2 == null) {
                    singleSubscriptionSnapshotFlowManager.workingSoleWatchedObject = obj;
                } else {
                    MutableScatterSet mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
                    MutableScatterSet mutableScatterSet3 = new MutableScatterSet();
                    mutableScatterSet3.add(obj2);
                    mutableScatterSet3.add(obj);
                    singleSubscriptionSnapshotFlowManager.workingWatchSet = mutableScatterSet3;
                    singleSubscriptionSnapshotFlowManager.workingSoleWatchedObject = null;
                }
                return Unit.INSTANCE;
            case 11:
                return Integer.valueOf(((SlotTable) this.f$0).anchorIndex(IntRectKt.asGapAnchor(((MovableContentStateReference) obj).anchor)));
            case BasicTextKt.ShiftMeta /* 12 */:
                SaveableStateRegistry saveableStateRegistry = ((SaveableStateHolderImpl) this.f$0).parentSaveableStateRegistry;
                return Boolean.valueOf(saveableStateRegistry != null ? saveableStateRegistry.canBeSaved(obj) : true);
            case 13:
                return invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda1(obj);
            case 14:
                TypefaceRequest typefaceRequest = (TypefaceRequest) obj;
                return ((FontFamilyResolverImpl) this.f$0).resolve(new TypefaceRequest(null, typefaceRequest.fontWeight, typefaceRequest.fontStyle, typefaceRequest.fontSynthesis, typefaceRequest.resourceLoaderCacheKey)).value;
            case OffsetKt.Horizontal /* 15 */:
                EditCommand editCommand = (EditCommand) obj;
                String str = ((EditCommand) this.f$0) == editCommand ? " > " : "   ";
                if (editCommand instanceof CommitTextCommand) {
                    sb = new StringBuilder("CommitTextCommand(text.length=");
                    CommitTextCommand commitTextCommand = (CommitTextCommand) editCommand;
                    sb.append(commitTextCommand.annotatedString.text.length());
                    sb.append(", newCursorPosition=");
                    i = commitTextCommand.newCursorPosition;
                } else {
                    if (!(editCommand instanceof SetComposingTextCommand)) {
                        if (editCommand instanceof SetComposingRegionCommand) {
                            concat = ((SetComposingRegionCommand) editCommand).toString();
                        } else if (editCommand instanceof DeleteSurroundingTextCommand) {
                            concat = ((DeleteSurroundingTextCommand) editCommand).toString();
                        } else if (editCommand instanceof DeleteSurroundingTextInCodePointsCommand) {
                            concat = ((DeleteSurroundingTextInCodePointsCommand) editCommand).toString();
                        } else if (editCommand instanceof SetSelectionCommand) {
                            concat = ((SetSelectionCommand) editCommand).toString();
                        } else if (editCommand instanceof FinishComposingTextCommand) {
                            concat = "FinishComposingTextCommand()";
                        } else if (editCommand instanceof DeleteAllCommand) {
                            concat = "DeleteAllCommand()";
                        } else {
                            String simpleName = Reflection.getOrCreateKotlinClass(editCommand.getClass()).getSimpleName();
                            if (simpleName == null) {
                                simpleName = "{anonymous EditCommand}";
                            }
                            concat = "Unknown EditCommand: ".concat(simpleName);
                        }
                        return str.concat(concat);
                    }
                    sb = new StringBuilder("SetComposingTextCommand(text.length=");
                    SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) editCommand;
                    sb.append(setComposingTextCommand.annotatedString.text.length());
                    sb.append(", newCursorPosition=");
                    i = setComposingTextCommand.newCursorPosition;
                }
                concat = CameraDevices$CC.m(sb, i, ')');
                return str.concat(concat);
            case 16:
                DataStoreImpl dataStoreImpl = (DataStoreImpl) this.f$0;
                SynchronizedLazyImpl synchronizedLazyImpl = dataStoreImpl.storageConnectionDelegate;
                Throwable th3 = (Throwable) obj;
                if (th3 != null) {
                    dataStoreImpl.inMemoryCache.tryUpdate(new Final(th3));
                }
                if (synchronizedLazyImpl.isInitialized()) {
                    ((FileStorageConnection) synchronizedLazyImpl.getValue()).close();
                }
                return Unit.INSTANCE;
            case 17:
                NavHostController createNavController$NavHostControllerKt__NavHostController_androidKt = SchemaInfoUtilKt.createNavController$NavHostControllerKt__NavHostController_androidKt((Context) this.f$0);
                createNavController$NavHostControllerKt__NavHostController_androidKt.restoreState((Bundle) obj);
                return createNavController$NavHostControllerKt__NavHostController_androidKt;
            case 18:
                FragmentNavigator fragmentNavigator = (FragmentNavigator) this.f$0;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                return new MenuHostHelper$$ExternalSyntheticLambda0(3, fragmentNavigator, navBackStackEntry);
            case 19:
                RoomConnectionManager roomConnectionManager = (RoomConnectionManager) this.f$0;
                FrameworkSQLiteDatabase frameworkSQLiteDatabase = (FrameworkSQLiteDatabase) obj;
                frameworkSQLiteDatabase.getClass();
                roomConnectionManager.supportDatabase = frameworkSQLiteDatabase;
                return Unit.INSTANCE;
            case 20:
                ContentType contentType = (ContentType) this.f$0;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver2, contentType);
                return Unit.INSTANCE;
            case 21:
                NavHostController navHostController = (NavHostController) this.f$0;
                ((IncomingServerSettingsContract$State) obj).getClass();
                NavHostController.navigate$default(navHostController, "validate");
                return Unit.INSTANCE;
            case 22:
                AccountOAuthContract$ViewModel accountOAuthContract$ViewModel = (AccountOAuthContract$ViewModel) this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                AccountOAuthContract$Event.OnOAuthResult onOAuthResult = new AccountOAuthContract$Event.OnOAuthResult(activityResult.data, activityResult.resultCode);
                AccountOAuthViewModel accountOAuthViewModel = (AccountOAuthViewModel) accountOAuthContract$ViewModel;
                accountOAuthViewModel.getClass();
                accountOAuthViewModel.event((AccountOAuthContract$Event) onOAuthResult);
                return Unit.INSTANCE;
            case 23:
                IncomingProtocolType incomingProtocolType = (IncomingProtocolType) this.f$0;
                IncomingServerSettingsContract$State incomingServerSettingsContract$State = (IncomingServerSettingsContract$State) obj;
                incomingServerSettingsContract$State.getClass();
                List allowedAuthenticationTypes = Utf8.SafeProcessor.getAllowedAuthenticationTypes(incomingProtocolType);
                AuthenticationType authenticationType = incomingServerSettingsContract$State.authenticationType;
                if (!allowedAuthenticationTypes.contains(authenticationType)) {
                    authenticationType = (AuthenticationType) CollectionsKt.first(allowedAuthenticationTypes);
                }
                AuthenticationType authenticationType2 = authenticationType;
                ConnectionSecurity connectionSecurity = ConnectionSecurity.TLS;
                NumberInputField numberInputField = incomingServerSettingsContract$State.port;
                Long valueOf = Long.valueOf(SQLite.toDefaultPort(incomingProtocolType, connectionSecurity));
                numberInputField.getClass();
                return IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State, incomingProtocolType, null, connectionSecurity, NumberInputField.updateValue(valueOf), authenticationType2, null, null, null, false, null, false, false, 4066);
            case 24:
                SpecialFolderOptions specialFolderOptions = (SpecialFolderOptions) this.f$0;
                ArrayList arrayList = specialFolderOptions.archiveSpecialFolderOptions;
                ArrayList arrayList2 = specialFolderOptions.draftsSpecialFolderOptions;
                ArrayList arrayList3 = specialFolderOptions.sentSpecialFolderOptions;
                ArrayList arrayList4 = specialFolderOptions.spamSpecialFolderOptions;
                ArrayList arrayList5 = specialFolderOptions.trashSpecialFolderOptions;
                return SpecialFoldersContract$State.copy$default((SpecialFoldersContract$State) obj, new SpecialFoldersContract$FormState(arrayList, arrayList2, arrayList3, arrayList4, arrayList5, (SpecialFolderOption) CollectionsKt.first((List) arrayList), (SpecialFolderOption) CollectionsKt.first((List) arrayList2), (SpecialFolderOption) CollectionsKt.first((List) arrayList3), (SpecialFolderOption) CollectionsKt.first((List) arrayList4), (SpecialFolderOption) CollectionsKt.first((List) arrayList5)), false, null, false, 30);
            case 25:
                ComponentActivity componentActivity = (ComponentActivity) this.f$0;
                ((AccountEditRoute) obj).getClass();
                componentActivity.finish();
                return Unit.INSTANCE;
            case 26:
                PreviewView previewView = (PreviewView) this.f$0;
                ((Context) obj).getClass();
                return previewView;
            case 27:
                ((QrCodeScannerViewModel) this.f$0).event(new QrCodeScannerContract$Event.CameraPermissionResult(((Boolean) obj).booleanValue()));
                return Unit.INSTANCE;
            case 28:
                ImportAppFetcher importAppFetcher = (ImportAppFetcher) this.f$0;
                AppVersion appVersion = (AppVersion) obj;
                appVersion.getClass();
                PackageManager packageManager = (PackageManager) importAppFetcher.packageManager$delegate.getValue();
                packageManager.getClass();
                int i2 = 28;
                try {
                    String str2 = appVersion.packageName;
                    if ((Build.VERSION.SDK_INT >= 28 ? ApiHelperForP.getLongVersionCode(packageManager.getPackageInfo(str2, 0)) : r6.versionCode) < appVersion.minVersionCode) {
                        r5 = false;
                    }
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str2, 0);
                    applicationInfo.getClass();
                    return new AppInfo(str2, ((PackageManager) importAppFetcher.packageManager$delegate.getValue()).getApplicationLabel(applicationInfo).toString(), r5);
                } catch (PackageManager.NameNotFoundException e) {
                    importAppFetcher.logger.error("ImportAppFetcher", e, new ImageLoader$Builder$$ExternalSyntheticLambda1(i2, appVersion));
                    return null;
                }
            default:
                transformations$lambda$0$0 = ImageRequestsKt.transformations$lambda$0$0((Ref$IntRef) this.f$0, (Transformation) obj);
                return transformations$lambda$0$0;
        }
    }

    public /* synthetic */ DiskLruCache$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }
}
