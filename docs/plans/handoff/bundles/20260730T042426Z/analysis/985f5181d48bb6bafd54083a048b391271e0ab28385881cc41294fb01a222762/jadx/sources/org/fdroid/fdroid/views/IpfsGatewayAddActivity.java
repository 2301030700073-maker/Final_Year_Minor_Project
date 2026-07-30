package org.fdroid.fdroid.views;

import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.fdroid.Preferences;
import org.fdroid.fdroid.ui.theme.ThemeKt;

/* compiled from: IpfsGatewayAddActivity.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\b"}, d2 = {"Lorg/fdroid/fdroid/views/IpfsGatewayAddActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "app_fullRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class IpfsGatewayAddActivity extends AppCompatActivity {
    public static final int $stable = 0;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        EdgeToEdge.enable$default(this, null, null, 3, null);
        super.onCreate(savedInstanceState);
        ComponentActivityKt.setContent$default(this, null, ComposableLambdaKt.composableLambdaInstance(212474564, true, new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewayAddActivity$onCreate$1

            /* compiled from: IpfsGatewayAddActivity.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            /* renamed from: org.fdroid.fdroid.views.IpfsGatewayAddActivity$onCreate$1$1, reason: invalid class name */
            static final class AnonymousClass1 implements Function2 {
                final /* synthetic */ IpfsGatewayAddActivity this$0;

                AnonymousClass1(IpfsGatewayAddActivity ipfsGatewayAddActivity) {
                    this.this$0 = ipfsGatewayAddActivity;
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    if ((i & 3) != 2 || !composer.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(84197902, i, -1, "org.fdroid.fdroid.views.IpfsGatewayAddActivity.onCreate.<anonymous>.<anonymous> (IpfsGatewayAddActivity.kt:53)");
                        }
                        composer.startReplaceGroup(-1226174264);
                        boolean changed = composer.changed(this.this$0);
                        final IpfsGatewayAddActivity ipfsGatewayAddActivity = this.this$0;
                        Object rememberedValue = composer.rememberedValue();
                        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                            rememberedValue = 
                            /*  JADX ERROR: Method code generation error
                                jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x003d: CONSTRUCTOR (r1v2 'rememberedValue' java.lang.Object) = (r0v2 'ipfsGatewayAddActivity' org.fdroid.fdroid.views.IpfsGatewayAddActivity A[DONT_INLINE]) A[MD:(org.fdroid.fdroid.views.IpfsGatewayAddActivity):void (m)] (LINE:55) call: org.fdroid.fdroid.views.IpfsGatewayAddActivity$onCreate$1$1$$ExternalSyntheticLambda0.<init>(org.fdroid.fdroid.views.IpfsGatewayAddActivity):void type: CONSTRUCTOR in method: org.fdroid.fdroid.views.IpfsGatewayAddActivity$onCreate$1.1.invoke(androidx.compose.runtime.Composer, int):void, file: classes2.dex
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
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
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
                                Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: org.fdroid.fdroid.views.IpfsGatewayAddActivity$onCreate$1$1$$ExternalSyntheticLambda0, state: NOT_LOADED
                                	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:305)
                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                                	... 29 more
                                */
                            /*
                                this = this;
                                r0 = r5 & 3
                                r1 = 2
                                if (r0 != r1) goto L10
                                boolean r0 = r4.getSkipping()
                                if (r0 != 0) goto Lc
                                goto L10
                            Lc:
                                r4.skipToGroupEnd()
                                goto L7e
                            L10:
                                boolean r0 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                                if (r0 == 0) goto L1f
                                r0 = -1
                                java.lang.String r1 = "org.fdroid.fdroid.views.IpfsGatewayAddActivity.onCreate.<anonymous>.<anonymous> (IpfsGatewayAddActivity.kt:53)"
                                r2 = 84197902(0x504c20e, float:6.2422524E-36)
                                androidx.compose.runtime.ComposerKt.traceEventStart(r2, r5, r0, r1)
                            L1f:
                                r5 = -1226174264(0xffffffffb6ea10c8, float:-6.975697E-6)
                                r4.startReplaceGroup(r5)
                                org.fdroid.fdroid.views.IpfsGatewayAddActivity r5 = r3.this$0
                                boolean r5 = r4.changed(r5)
                                org.fdroid.fdroid.views.IpfsGatewayAddActivity r0 = r3.this$0
                                java.lang.Object r1 = r4.rememberedValue()
                                if (r5 != 0) goto L3b
                                androidx.compose.runtime.Composer$Companion r5 = androidx.compose.runtime.Composer.Companion
                                java.lang.Object r5 = r5.getEmpty()
                                if (r1 != r5) goto L43
                            L3b:
                                org.fdroid.fdroid.views.IpfsGatewayAddActivity$onCreate$1$1$$ExternalSyntheticLambda0 r1 = new org.fdroid.fdroid.views.IpfsGatewayAddActivity$onCreate$1$1$$ExternalSyntheticLambda0
                                r1.<init>(r0)
                                r4.updateRememberedValue(r1)
                            L43:
                                kotlin.jvm.functions.Function0 r1 = (kotlin.jvm.functions.Function0) r1
                                r4.endReplaceGroup()
                                r5 = -1226170952(0xffffffffb6ea1db8, float:-6.977203E-6)
                                r4.startReplaceGroup(r5)
                                org.fdroid.fdroid.views.IpfsGatewayAddActivity r5 = r3.this$0
                                boolean r5 = r4.changed(r5)
                                org.fdroid.fdroid.views.IpfsGatewayAddActivity r0 = r3.this$0
                                java.lang.Object r2 = r4.rememberedValue()
                                if (r5 != 0) goto L64
                                androidx.compose.runtime.Composer$Companion r5 = androidx.compose.runtime.Composer.Companion
                                java.lang.Object r5 = r5.getEmpty()
                                if (r2 != r5) goto L6c
                            L64:
                                org.fdroid.fdroid.views.IpfsGatewayAddActivity$onCreate$1$1$$ExternalSyntheticLambda1 r2 = new org.fdroid.fdroid.views.IpfsGatewayAddActivity$onCreate$1$1$$ExternalSyntheticLambda1
                                r2.<init>(r0)
                                r4.updateRememberedValue(r2)
                            L6c:
                                kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
                                r4.endReplaceGroup()
                                r5 = 0
                                org.fdroid.fdroid.views.IpfsGatewayAddActivityKt.IpfsGatewayAddScreen(r1, r2, r4, r5)
                                boolean r4 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                                if (r4 == 0) goto L7e
                                androidx.compose.runtime.ComposerKt.traceEventEnd()
                            L7e:
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: org.fdroid.fdroid.views.IpfsGatewayAddActivity$onCreate$1.AnonymousClass1.invoke(androidx.compose.runtime.Composer, int):void");
                        }

                        /* JADX INFO: Access modifiers changed from: private */
                        public static final Unit invoke$lambda$1$lambda$0(IpfsGatewayAddActivity ipfsGatewayAddActivity) {
                            ipfsGatewayAddActivity.getOnBackPressedDispatcher().onBackPressed();
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: Access modifiers changed from: private */
                        public static final Unit invoke$lambda$3$lambda$2(IpfsGatewayAddActivity ipfsGatewayAddActivity, String url) {
                            Intrinsics.checkNotNullParameter(url, "url");
                            if (!Preferences.DEFAULT_IPFS_GATEWAYS.contains(url)) {
                                List<String> ipfsGwUserList = Preferences.get().getIpfsGwUserList();
                                Intrinsics.checkNotNullExpressionValue(ipfsGwUserList, "getIpfsGwUserList(...)");
                                List<String> mutableList = CollectionsKt.toMutableList((Collection) ipfsGwUserList);
                                if (!mutableList.contains(url)) {
                                    mutableList.add(url);
                                    Preferences.get().mo3139setIpfsGwUserList(mutableList);
                                }
                            }
                            ipfsGatewayAddActivity.finish();
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
                                ComposerKt.traceEventStart(212474564, i, -1, "org.fdroid.fdroid.views.IpfsGatewayAddActivity.onCreate.<anonymous> (IpfsGatewayAddActivity.kt:52)");
                            }
                            ThemeKt.FDroidContent(false, false, ComposableLambdaKt.rememberComposableLambda(84197902, true, new AnonymousClass1(IpfsGatewayAddActivity.this), composer, 54), composer, 384, 3);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer.skipToGroupEnd();
                    }
                }), 1, null);
            }
        }
