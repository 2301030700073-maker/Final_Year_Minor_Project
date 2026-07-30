package org.fdroid.fdroid.views.repos;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import androidx.lifecycle.LifecycleOwnerKt;
import info.guardianproject.netcipher.NetCipher;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.MatchGroup;
import kotlin.text.MatchGroupCollection;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.fdroid.fdroid.FDroidApp;
import org.fdroid.fdroid.Preferences;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.nearby.SwapService;
import org.fdroid.fdroid.ui.theme.ThemeKt;
import org.fdroid.index.RepoManager;
import org.fdroid.repo.AddRepoError;
import org.fdroid.repo.AddRepoState;

/* compiled from: AddRepoActivity.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\b\u0010\f\u001a\u00020\tH\u0014J\b\u0010\r\u001a\u00020\tH\u0014J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0010H\u0002R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lorg/fdroid/fdroid/views/repos/AddRepoActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "repoManager", "Lorg/fdroid/index/RepoManager;", "getRepoManager", "()Lorg/fdroid/index/RepoManager;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "onDestroy", "onFetchRepo", "uriStr", "", "fetchIfRepoUri", "str", "app_fullRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AddRepoActivity extends AppCompatActivity {
    public static final int $stable = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public final RepoManager getRepoManager() {
        RepoManager repoManager = FDroidApp.getRepoManager(this);
        Intrinsics.checkNotNullExpressionValue(repoManager, "getRepoManager(...)");
        return repoManager;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        EdgeToEdge.enable$default(this, null, null, 3, null);
        super.onCreate(savedInstanceState);
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new AddRepoActivity$onCreate$1(this, null), 3, null);
        ComponentActivityKt.setContent$default(this, null, ComposableLambdaKt.composableLambdaInstance(-90938685, true, new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2

            /* compiled from: AddRepoActivity.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            /* renamed from: org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1, reason: invalid class name */
            static final class AnonymousClass1 implements Function2 {
                final /* synthetic */ AddRepoActivity this$0;

                AnonymousClass1(AddRepoActivity addRepoActivity) {
                    this.this$0 = addRepoActivity;
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    RepoManager repoManager;
                    if ((i & 3) == 2 && composer.getSkipping()) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1220021235, i, -1, "org.fdroid.fdroid.views.repos.AddRepoActivity.onCreate.<anonymous>.<anonymous> (AddRepoActivity.kt:59)");
                    }
                    repoManager = this.this$0.getRepoManager();
                    AddRepoState addRepoState = (AddRepoState) SnapshotStateKt.collectAsState(repoManager.getAddRepoState(), null, composer, 0, 1).getValue();
                    boolean z = addRepoState instanceof AddRepoError;
                    composer.startReplaceGroup(1883035530);
                    boolean changed = composer.changed(this.this$0);
                    final AddRepoActivity addRepoActivity = this.this$0;
                    Object rememberedValue = composer.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                        rememberedValue = 
                        /*  JADX ERROR: Method code generation error
                            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0058: CONSTRUCTOR (r4v1 'rememberedValue' java.lang.Object) = (r1v2 'addRepoActivity' org.fdroid.fdroid.views.repos.AddRepoActivity A[DONT_INLINE]) A[MD:(org.fdroid.fdroid.views.repos.AddRepoActivity):void (m)] (LINE:61) call: org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1$$ExternalSyntheticLambda0.<init>(org.fdroid.fdroid.views.repos.AddRepoActivity):void type: CONSTRUCTOR in method: org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2.1.invoke(androidx.compose.runtime.Composer, int):void, file: classes2.dex
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1$$ExternalSyntheticLambda0, state: NOT_LOADED
                            	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:305)
                            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                            	... 25 more
                            */
                        /*
                            this = this;
                            r0 = r11 & 3
                            r1 = 2
                            if (r0 != r1) goto L11
                            boolean r0 = r10.getSkipping()
                            if (r0 != 0) goto Lc
                            goto L11
                        Lc:
                            r10.skipToGroupEnd()
                            goto Lf2
                        L11:
                            boolean r0 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                            if (r0 == 0) goto L20
                            r0 = -1
                            java.lang.String r1 = "org.fdroid.fdroid.views.repos.AddRepoActivity.onCreate.<anonymous>.<anonymous> (AddRepoActivity.kt:59)"
                            r2 = -1220021235(0xffffffffb747f40d, float:-1.1918147E-5)
                            androidx.compose.runtime.ComposerKt.traceEventStart(r2, r11, r0, r1)
                        L20:
                            org.fdroid.fdroid.views.repos.AddRepoActivity r11 = r9.this$0
                            org.fdroid.index.RepoManager r11 = org.fdroid.fdroid.views.repos.AddRepoActivity.access$getRepoManager(r11)
                            kotlinx.coroutines.flow.StateFlow r11 = r11.getAddRepoState()
                            r0 = 0
                            r1 = 1
                            r2 = 0
                            androidx.compose.runtime.State r11 = androidx.compose.runtime.SnapshotStateKt.collectAsState(r11, r0, r10, r2, r1)
                            java.lang.Object r11 = r11.getValue()
                            r3 = r11
                            org.fdroid.repo.AddRepoState r3 = (org.fdroid.repo.AddRepoState) r3
                            boolean r11 = r3 instanceof org.fdroid.repo.AddRepoError
                            r0 = 1883035530(0x703cd78a, float:2.3377501E29)
                            r10.startReplaceGroup(r0)
                            org.fdroid.fdroid.views.repos.AddRepoActivity r0 = r9.this$0
                            boolean r0 = r10.changed(r0)
                            org.fdroid.fdroid.views.repos.AddRepoActivity r1 = r9.this$0
                            java.lang.Object r4 = r10.rememberedValue()
                            if (r0 != 0) goto L56
                            androidx.compose.runtime.Composer$Companion r0 = androidx.compose.runtime.Composer.Companion
                            java.lang.Object r0 = r0.getEmpty()
                            if (r4 != r0) goto L5e
                        L56:
                            org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1$$ExternalSyntheticLambda0 r4 = new org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1$$ExternalSyntheticLambda0
                            r4.<init>(r1)
                            r10.updateRememberedValue(r4)
                        L5e:
                            kotlin.jvm.functions.Function0 r4 = (kotlin.jvm.functions.Function0) r4
                            r10.endReplaceGroup()
                            androidx.activity.compose.BackHandlerKt.BackHandler(r11, r4, r10, r2, r2)
                            org.fdroid.fdroid.views.repos.AddRepoActivity r11 = r9.this$0
                            r0 = 1883043341(0x703cf60d, float:2.3392256E29)
                            r10.startReplaceGroup(r0)
                            boolean r0 = r10.changed(r11)
                            java.lang.Object r1 = r10.rememberedValue()
                            if (r0 != 0) goto L80
                            androidx.compose.runtime.Composer$Companion r0 = androidx.compose.runtime.Composer.Companion
                            java.lang.Object r0 = r0.getEmpty()
                            if (r1 != r0) goto L88
                        L80:
                            org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1$2$1 r1 = new org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1$2$1
                            r1.<init>(r11)
                            r10.updateRememberedValue(r1)
                        L88:
                            kotlin.reflect.KFunction r1 = (kotlin.reflect.KFunction) r1
                            r10.endReplaceGroup()
                            r4 = r1
                            kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
                            r11 = 1883044994(0x703cfc82, float:2.3395378E29)
                            r10.startReplaceGroup(r11)
                            org.fdroid.fdroid.views.repos.AddRepoActivity r11 = r9.this$0
                            boolean r11 = r10.changed(r11)
                            org.fdroid.fdroid.views.repos.AddRepoActivity r0 = r9.this$0
                            java.lang.Object r1 = r10.rememberedValue()
                            if (r11 != 0) goto Lac
                            androidx.compose.runtime.Composer$Companion r11 = androidx.compose.runtime.Composer.Companion
                            java.lang.Object r11 = r11.getEmpty()
                            if (r1 != r11) goto Lb4
                        Lac:
                            org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1$$ExternalSyntheticLambda1 r1 = new org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1$$ExternalSyntheticLambda1
                            r1.<init>(r0)
                            r10.updateRememberedValue(r1)
                        Lb4:
                            r5 = r1
                            kotlin.jvm.functions.Function0 r5 = (kotlin.jvm.functions.Function0) r5
                            r10.endReplaceGroup()
                            r11 = 1883047431(0x703d0607, float:2.3399981E29)
                            r10.startReplaceGroup(r11)
                            org.fdroid.fdroid.views.repos.AddRepoActivity r11 = r9.this$0
                            boolean r11 = r10.changed(r11)
                            org.fdroid.fdroid.views.repos.AddRepoActivity r0 = r9.this$0
                            java.lang.Object r1 = r10.rememberedValue()
                            if (r11 != 0) goto Ld6
                            androidx.compose.runtime.Composer$Companion r11 = androidx.compose.runtime.Composer.Companion
                            java.lang.Object r11 = r11.getEmpty()
                            if (r1 != r11) goto Lde
                        Ld6:
                            org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1$$ExternalSyntheticLambda2 r1 = new org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2$1$$ExternalSyntheticLambda2
                            r1.<init>(r0)
                            r10.updateRememberedValue(r1)
                        Lde:
                            r6 = r1
                            kotlin.jvm.functions.Function0 r6 = (kotlin.jvm.functions.Function0) r6
                            r10.endReplaceGroup()
                            r8 = 0
                            r7 = r10
                            org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt.AddRepoIntroScreen(r3, r4, r5, r6, r7, r8)
                            boolean r10 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                            if (r10 == 0) goto Lf2
                            androidx.compose.runtime.ComposerKt.traceEventEnd()
                        Lf2:
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.fdroid.views.repos.AddRepoActivity$onCreate$2.AnonymousClass1.invoke(androidx.compose.runtime.Composer, int):void");
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public static final Unit invoke$lambda$1$lambda$0(AddRepoActivity addRepoActivity) {
                        RepoManager repoManager;
                        repoManager = addRepoActivity.getRepoManager();
                        repoManager.abortAddingRepository();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public static final Unit invoke$lambda$4$lambda$3(AddRepoActivity addRepoActivity) {
                        RepoManager repoManager;
                        repoManager = addRepoActivity.getRepoManager();
                        repoManager.addFetchedRepository();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public static final Unit invoke$lambda$6$lambda$5(AddRepoActivity addRepoActivity) {
                        addRepoActivity.getOnBackPressedDispatcher().onBackPressed();
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    if ((i & 3) != 2 || !composer.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-90938685, i, -1, "org.fdroid.fdroid.views.repos.AddRepoActivity.onCreate.<anonymous> (AddRepoActivity.kt:58)");
                        }
                        ThemeKt.FDroidContent(false, false, ComposableLambdaKt.rememberComposableLambda(-1220021235, true, new AnonymousClass1(AddRepoActivity.this), composer, 54), composer, 384, 3);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer.skipToGroupEnd();
                }
            }), 1, null);
            addOnNewIntentListener(new Consumer() { // from class: org.fdroid.fdroid.views.repos.AddRepoActivity$$ExternalSyntheticLambda0
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    AddRepoActivity.onCreate$lambda$2(AddRepoActivity.this, (Intent) obj);
                }
            });
            Intent intent = getIntent();
            if (intent != null) {
                onNewIntent(intent);
                intent.setData(null);
                intent.replaceExtras(new Bundle());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onCreate$lambda$2(AddRepoActivity addRepoActivity, Intent intent) {
            String stringExtra;
            String dataString;
            Intrinsics.checkNotNullParameter(intent, "intent");
            String action = intent.getAction();
            if (action != null) {
                int hashCode = action.hashCode();
                if (hashCode == -1173264947) {
                    if (action.equals("android.intent.action.SEND") && (stringExtra = intent.getStringExtra("android.intent.extra.TEXT")) != null) {
                        addRepoActivity.fetchIfRepoUri(stringExtra);
                        return;
                    }
                    return;
                }
                if (hashCode == -1173171990 && action.equals("android.intent.action.VIEW") && (dataString = intent.getDataString()) != null) {
                    addRepoActivity.onFetchRepo(dataString);
                }
            }
        }

        @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
        protected void onResume() {
            super.onResume();
            FDroidApp.checkStartTor(this, Preferences.get());
        }

        @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
        protected void onDestroy() {
            super.onDestroy();
            if (isChangingConfigurations()) {
                return;
            }
            getRepoManager().abortAddingRepository();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void onFetchRepo(String uriStr) {
            Uri parse = Uri.parse(StringsKt.trim(uriStr).toString());
            if (getRepoManager().isSwapUri(parse)) {
                Intent intent = new Intent(this, (Class<?>) SwapService.class);
                intent.setData(parse);
                ContextCompat.startForegroundService(this, intent);
            } else {
                getRepoManager().abortAddingRepository();
                RepoManager repoManager = getRepoManager();
                String uri = parse.toString();
                Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
                repoManager.fetchRepositoryPreview(uri, NetCipher.getProxy());
            }
        }

        private final void fetchIfRepoUri(String str) {
            MatchGroupCollection groups;
            MatchGroup matchGroup;
            MatchGroupCollection groups2;
            MatchGroup matchGroup2;
            RegexOption regexOption = RegexOption.IGNORE_CASE;
            RegexOption regexOption2 = RegexOption.MULTILINE;
            String str2 = null;
            MatchResult find$default = Regex.find$default(new Regex("^.*((https|fdroidrepos)://.+/repo(\\?fingerprint=[A-F0-9]+)?) ?.*$", SetsKt.setOf((Object[]) new RegexOption[]{regexOption, regexOption2})), str, 0, 2, null);
            String value = (find$default == null || (groups2 = find$default.getGroups()) == null || (matchGroup2 = groups2.get(1)) == null) ? null : matchGroup2.getValue();
            if (value != null) {
                Log.d(Reflection.getOrCreateKotlinClass(AddRepoActivity.class).getSimpleName(), "Found match: " + value);
                onFetchRepo(value);
                return;
            }
            MatchResult find$default2 = Regex.find$default(new Regex("^.*(https://fdroid.link/.+) ?.*$", SetsKt.setOf((Object[]) new RegexOption[]{regexOption, regexOption2})), str, 0, 2, null);
            if (find$default2 != null && (groups = find$default2.getGroups()) != null && (matchGroup = groups.get(1)) != null) {
                str2 = matchGroup.getValue();
            }
            if (str2 != null) {
                Log.d(Reflection.getOrCreateKotlinClass(AddRepoActivity.class).getSimpleName(), "Found match: " + str2);
                onFetchRepo(str2);
                return;
            }
            Toast.makeText(this, R.string.repo_share_not_found, 1).show();
            finishAfterTransition();
        }
    }
