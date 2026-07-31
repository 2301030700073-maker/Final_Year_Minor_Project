package okhttp3;

import android.graphics.Matrix;
import android.view.View;
import android.widget.Button;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.Latch;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.tabs.TabLayout;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.hcaptcha.sdk.HCaptchaException;
import io.getstream.photoview.PhotoViewAttacher;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KDeclarationContainerImpl;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.KMutableProperty0Impl;
import kotlin.reflect.jvm.internal.KMutableProperty1Impl;
import kotlin.reflect.jvm.internal.KMutableProperty2Impl;
import kotlin.reflect.jvm.internal.KProperty0Impl;
import kotlin.reflect.jvm.internal.KProperty1Impl;
import kotlin.reflect.jvm.internal.KProperty2Impl;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyAccessorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.RopeByteString;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$Companion$WhenMappings;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$RenderDeclarationDescriptorVisitor$WhenMappings;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$renderConstant$1;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererModifier;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl$property$$inlined$vetoable$1;
import kotlin.reflect.jvm.internal.impl.renderer.PropertyAccessorRenderingPolicy;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl;
import kotlin.reflect.jvm.internal.impl.storage.SimpleLock;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealConnectionPool;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.connection.RoutePlanner$ConnectResult;
import okhttp3.internal.connection.RoutePlanner$Plan;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.DerAdapter;
import okhttp3.tls.internal.der.DerReader;
import okio.Okio__OkioKt;
import okio.Options;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Tag;
import org.jsoup.select.NodeFilter$FilterResult;
import org.jsoup.select.NodeVisitor;
import org.maplibre.android.maps.renderer.surfaceview.MapLibreSurfaceView;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.captcha.HCaptchaHelper$Callback;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.categories.CategoryDialog;
import org.wikipedia.commons.FilePageFragment;
import org.wikipedia.createaccount.CreateAccountActivity;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.gallery.MediaDownloadReceiver;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.LanguageScrollView;
import org.wikipedia.views.PageItemView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ConnectionPool implements DFS.Neighbors, SourceElement, ClassDataFinder, SimpleLock, FunctionDescriptor.CopyBuilder, ExchangeFinder, BasicDerAdapter.Codec, NodeVisitor, MapLibreSurfaceView.OnSurfaceViewDetachedListener, PageItemView.Callback, MediaDownloadReceiver.Callback, HCaptchaHelper$Callback {
    public final /* synthetic */ int $r8$classId;
    public Object delegate;

    public ConnectionPool(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 4:
                break;
            case 7:
                this.delegate = new Stack();
                break;
            case IMAGE_VALUE:
                this.delegate = new ConcurrentHashMap(16);
                break;
            case 15:
                this.delegate = new LinkedHashSet();
                break;
            default:
                TimeUnit.MINUTES.getClass();
                TaskRunner taskRunner = TaskRunner.INSTANCE;
                taskRunner.getClass();
                this.delegate = new RealConnectionPool(taskRunner);
                break;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor build() {
        return (ErrorFunctionDescriptor) this.delegate;
    }

    public synchronized void connected(Route route) {
        route.getClass();
        ((LinkedHashSet) this.delegate).remove(route);
    }

    @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
    public Object decode(DerReader derReader) {
        derReader.getClass();
        ArrayList arrayList = new ArrayList();
        while (derReader.peekHeader() != null) {
            arrayList.add(((DerAdapter) this.delegate).fromDer(derReader));
        }
        return arrayList;
    }

    public void doBalance(ByteString byteString) {
        if (!byteString.isBalanced()) {
            if (!(byteString instanceof RopeByteString)) {
                String valueOf = String.valueOf(byteString.getClass());
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(new StringBuilder(valueOf.length() + 49), "Has a new type of ByteString been created? Found ", valueOf));
                return;
            } else {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                doBalance(ropeByteString.left);
                doBalance(ropeByteString.right);
                return;
            }
        }
        int size = byteString.size();
        int[] iArr = RopeByteString.minLengthByDepth;
        int binarySearch = Arrays.binarySearch(iArr, size);
        if (binarySearch < 0) {
            binarySearch = (-(binarySearch + 1)) - 1;
        }
        int i = iArr[binarySearch + 1];
        Stack stack = (Stack) this.delegate;
        if (stack.isEmpty() || ((ByteString) stack.peek()).size() >= i) {
            stack.push(byteString);
            return;
        }
        int i2 = iArr[binarySearch];
        ByteString byteString2 = (ByteString) stack.pop();
        while (!stack.isEmpty() && ((ByteString) stack.peek()).size() < i2) {
            byteString2 = new RopeByteString((ByteString) stack.pop(), byteString2);
        }
        RopeByteString ropeByteString2 = new RopeByteString(byteString2, byteString);
        while (!stack.isEmpty()) {
            int[] iArr2 = RopeByteString.minLengthByDepth;
            int binarySearch2 = Arrays.binarySearch(iArr2, ropeByteString2.totalLength);
            if (binarySearch2 < 0) {
                binarySearch2 = (-(binarySearch2 + 1)) - 1;
            }
            if (((ByteString) stack.peek()).size() >= iArr2[binarySearch2 + 1]) {
                break;
            } else {
                ropeByteString2 = new RopeByteString((ByteString) stack.pop(), ropeByteString2);
            }
        }
        stack.push(ropeByteString2);
    }

    @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
    public void encode(Latch latch, Object obj) {
        List list = (List) obj;
        latch.getClass();
        list.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((DerAdapter) this.delegate).toDer(latch, it.next());
        }
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealConnection find() {
        RoutePlanner$Plan plan;
        IOException iOException = null;
        while (!((RealRoutePlanner) this.delegate).call.canceled) {
            try {
                plan = ((RealRoutePlanner) this.delegate).plan();
            } catch (IOException e) {
                if (iOException == null) {
                    iOException = e;
                } else {
                    ExceptionsKt.addSuppressed(iOException, e);
                }
                if (!((RealRoutePlanner) this.delegate).hasNext(null)) {
                    throw iOException;
                }
            }
            if (!plan.isReady()) {
                RoutePlanner$ConnectResult connectTcp = plan.connectTcp();
                if (connectTcp.nextPlan == null && connectTcp.throwable == null) {
                    connectTcp = plan.connectTlsEtc();
                }
                RoutePlanner$Plan routePlanner$Plan = connectTcp.nextPlan;
                Throwable th = connectTcp.throwable;
                if (th != null) {
                    throw th;
                }
                if (routePlanner$Plan != null) {
                    ((RealRoutePlanner) this.delegate).deferredPlans.addFirst(routePlanner$Plan);
                }
            }
            return plan.handleSuccess();
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Canceled");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder
    public ClassData findClassData(ClassId classId) {
        ClassData findClassData;
        classId.getClass();
        PackageFragmentProviderOptimized packageFragmentProviderOptimized = (PackageFragmentProviderOptimized) this.delegate;
        FqName packageFqName = classId.getPackageFqName();
        packageFqName.getClass();
        ArrayList arrayList = new ArrayList();
        packageFragmentProviderOptimized.collectPackageFragments(packageFqName, arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            PackageFragmentDescriptor packageFragmentDescriptor = (PackageFragmentDescriptor) it.next();
            if ((packageFragmentDescriptor instanceof BuiltInsPackageFragmentImpl) && (findClassData = ((BuiltInsPackageFragmentImpl) packageFragmentDescriptor).classDataFinder.findClassData(classId)) != null) {
                return findClassData;
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
    public Iterable getNeighbors(Object obj) {
        JvmBuiltInsCustomizer jvmBuiltInsCustomizer = (JvmBuiltInsCustomizer) this.delegate;
        Collection supertypes = ((ModuleAwareClassDescriptor) obj).getTypeConstructor().getSupertypes();
        supertypes.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = supertypes.iterator();
        while (it.hasNext()) {
            ClassifierDescriptor declarationDescriptor = ((KotlinType) it.next()).getConstructor().getDeclarationDescriptor();
            ClassifierDescriptor original = declarationDescriptor != null ? declarationDescriptor.getOriginal() : null;
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = original instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) original : null;
            LazyJavaClassDescriptor javaAnalogue = moduleAwareClassDescriptor != null ? jvmBuiltInsCustomizer.getJavaAnalogue(moduleAwareClassDescriptor) : null;
            if (javaAnalogue != null) {
                arrayList.add(javaAnalogue);
            }
        }
        return arrayList;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealRoutePlanner getRoutePlanner() {
        return (RealRoutePlanner) this.delegate;
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(int i, Node node) {
        NodeFilter$FilterResult nodeFilter$FilterResult;
        StringBuilder sb = (StringBuilder) this.delegate;
        if (node instanceof TextNode) {
            Element.appendNormalisedText(sb, (TextNode) node);
            return;
        }
        if (node instanceof Element) {
            Element element = (Element) node;
            if (sb.length() > 0) {
                if (!element.isBlock() && !element.nameIs("br")) {
                    if (!element.tag.is(1024) || element.childNodes.size() <= 0) {
                        return;
                    }
                    AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                    Node node2 = element;
                    int i2 = 0;
                    loop0: while (node2 != null) {
                        if (!(node2 instanceof TextNode) || StringUtil.isBlank(((TextNode) node2).coreValue())) {
                            nodeFilter$FilterResult = NodeFilter$FilterResult.CONTINUE;
                        } else {
                            atomicBoolean.set(true);
                            nodeFilter$FilterResult = NodeFilter$FilterResult.STOP;
                        }
                        if (nodeFilter$FilterResult == NodeFilter$FilterResult.STOP) {
                            break;
                        }
                        if (nodeFilter$FilterResult != NodeFilter$FilterResult.CONTINUE || node2.childNodeSize() <= 0) {
                            while (node2.nextSibling() == null && i2 > 0) {
                                NodeFilter$FilterResult nodeFilter$FilterResult2 = NodeFilter$FilterResult.CONTINUE;
                                if (nodeFilter$FilterResult == nodeFilter$FilterResult2 || nodeFilter$FilterResult == NodeFilter$FilterResult.SKIP_CHILDREN) {
                                    if (nodeFilter$FilterResult2 == NodeFilter$FilterResult.STOP) {
                                        break loop0;
                                    } else {
                                        nodeFilter$FilterResult = nodeFilter$FilterResult2;
                                    }
                                }
                                Element element2 = node2.parentNode;
                                i2--;
                                if (nodeFilter$FilterResult == NodeFilter$FilterResult.REMOVE) {
                                    node2.remove();
                                }
                                nodeFilter$FilterResult = nodeFilter$FilterResult2;
                                node2 = element2;
                            }
                            NodeFilter$FilterResult nodeFilter$FilterResult3 = NodeFilter$FilterResult.CONTINUE;
                            if (nodeFilter$FilterResult == nodeFilter$FilterResult3 || nodeFilter$FilterResult == NodeFilter$FilterResult.SKIP_CHILDREN) {
                                if (nodeFilter$FilterResult3 == NodeFilter$FilterResult.STOP) {
                                    break;
                                } else {
                                    nodeFilter$FilterResult = nodeFilter$FilterResult3;
                                }
                            }
                            if (node2 == element) {
                                break;
                            }
                            Node nextSibling = node2.nextSibling();
                            if (nodeFilter$FilterResult == NodeFilter$FilterResult.REMOVE) {
                                node2.remove();
                            }
                            node2 = nextSibling;
                        } else {
                            node2 = node2.childNode(0);
                            i2++;
                        }
                    }
                    if (!atomicBoolean.get()) {
                        return;
                    }
                }
                if (TextNode.lastCharIsWhitespace(sb)) {
                    return;
                }
                sb.append(' ');
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0058, code lost:
    
        if (r6 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005b, code lost:
    
        r2 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0077, code lost:
    
        if (r6 == null) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0093 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isInSample(org.wikimedia.testkitchen.config.StreamConfig r7) {
        /*
            r6 = this;
            org.wikimedia.testkitchen.config.sampling.SampleConfig r7 = r7.sampleConfig
            if (r7 != 0) goto L6
            goto L93
        L6:
            double r0 = r7.rate
            r2 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 != 0) goto L10
            goto L93
        L10:
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto L19
            goto L95
        L19:
            java.lang.String r7 = r7.unit
            r7.getClass()
            java.lang.String r2 = ""
            int r4 = r7.hashCode()
            r5 = -1335157162(0xffffffffb06b1e56, float:-8.553561E-10)
            if (r4 == r5) goto L5d
            r5 = 860470708(0x3349bdb4, float:4.6971493E-8)
            if (r4 == r5) goto L49
            r2 = 1984987798(0x76508296, float:1.0572718E33)
            if (r4 == r2) goto L34
            goto L65
        L34:
            java.lang.String r2 = "session"
            boolean r7 = r7.equals(r2)
            if (r7 != 0) goto L3d
            goto L65
        L3d:
            java.lang.Object r6 = r6.delegate
            org.wikimedia.testkitchen.SessionController r6 = (org.wikimedia.testkitchen.SessionController) r6
            monitor-enter(r6)
            java.lang.String r2 = r6.sessionId     // Catch: java.lang.Throwable -> L46
            monitor-exit(r6)
            goto L79
        L46:
            r7 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L46
            throw r7
        L49:
            java.lang.String r6 = "pageview"
            boolean r6 = r7.equals(r6)
            if (r6 != 0) goto L52
            goto L65
        L52:
            org.wikimedia.testkitchen.context.PerformerData r6 = org.wikipedia.analytics.testkitchen.TestKitchenAdapter.getPerformerData()
            java.lang.String r6 = r6.pageviewId
            if (r6 != 0) goto L5b
            goto L79
        L5b:
            r2 = r6
            goto L79
        L5d:
            java.lang.String r6 = "device"
            boolean r6 = r7.equals(r6)
            if (r6 != 0) goto L71
        L65:
            java.util.UUID r6 = java.util.UUID.randomUUID()
            java.lang.String r2 = r6.toString()
            r2.getClass()
            goto L79
        L71:
            org.wikimedia.testkitchen.context.AgentData r6 = org.wikipedia.analytics.testkitchen.TestKitchenAdapter.getAgentData()
            java.lang.String r6 = r6.appInstallId
            if (r6 != 0) goto L5b
        L79:
            r6 = 8
            java.lang.String r6 = r2.substring(r3, r6)
            r7 = 16
            coil3.util.UtilsKt.checkRadix(r7)
            long r6 = java.lang.Long.parseLong(r6, r7)
            double r6 = (double) r6
            r4 = 4751297606873776128(0x41efffffffe00000, double:4.294967295E9)
            double r6 = r6 / r4
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 >= 0) goto L95
        L93:
            r6 = 1
            return r6
        L95:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ConnectionPool.isInSample(org.wikimedia.testkitchen.config.StreamConfig):boolean");
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.SimpleLock
    public void lock() {
        ((ReentrantLock) this.delegate).lock();
    }

    @Override // org.wikipedia.views.PageItemView.Callback
    public void onActionClick(View view, Object obj) {
        switch (this.$r8$classId) {
            case SIZE_BOX_VALUE:
                break;
            default:
                break;
        }
    }

    @Override // org.wikipedia.views.PageItemView.Callback
    public void onClick(Object obj) {
        switch (this.$r8$classId) {
            case SIZE_BOX_VALUE:
                PageTitle pageTitle = (PageTitle) obj;
                if (pageTitle != null) {
                    CategoryActivity categoryActivity = (CategoryActivity) this.delegate;
                    int i = CategoryActivity.$r8$clinit;
                    if (!categoryActivity.getViewModel().showSubcategories) {
                        HistoryEntry historyEntry = new HistoryEntry(36, pageTitle);
                        FragmentManagerImpl supportFragmentManager = categoryActivity.getSupportFragmentManager();
                        LinkPreviewDialog linkPreviewDialog = new LinkPreviewDialog();
                        linkPreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("entry", historyEntry), new Pair("location", null), new Pair("lastKnownLocation", null)));
                        Okio__OkioKt.show(supportFragmentManager, linkPreviewDialog);
                        break;
                    } else {
                        categoryActivity.startActivity(ReadingListFragment.MultiSelectCallback.newIntent(categoryActivity, pageTitle));
                        break;
                    }
                }
                break;
            default:
                PageTitle pageTitle2 = (PageTitle) obj;
                if (pageTitle2 != null) {
                    CategoryDialog categoryDialog = (CategoryDialog) this.delegate;
                    int i2 = CategoryActivity.$r8$clinit;
                    categoryDialog.startActivity(ReadingListFragment.MultiSelectCallback.newIntent(categoryDialog.requireActivity(), pageTitle2), null);
                    break;
                }
                break;
        }
    }

    @Override // org.wikipedia.captcha.HCaptchaHelper$Callback
    public void onError(HCaptchaException hCaptchaException) {
        CreateAccountActivity createAccountActivity = (CreateAccountActivity) this.delegate;
        SVGAndroidRenderer instrument = ContextKt.getInstrument(createAccountActivity);
        if (instrument != null) {
            SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_error", null, null, null, null, Options.Companion.getInstrumentActionContext(hCaptchaException), 126);
        }
        Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
        createAccountActivity.showProgressBar(false);
        String message = hCaptchaException.getMessage();
        if (message == null) {
            message = "";
        }
        ShareUtil.showMessage(createAccountActivity, message, 0);
    }

    @Override // org.wikipedia.views.PageItemView.Callback
    public void onListChipClick(ReadingList readingList) {
        int i = this.$r8$classId;
    }

    @Override // org.wikipedia.views.PageItemView.Callback
    public boolean onLongClick(Object obj) {
        switch (this.$r8$classId) {
            case SIZE_BOX_VALUE:
                break;
            default:
                break;
        }
        return false;
    }

    public void onScale(float f, float f2, float f3, float f4, float f5) {
        PhotoViewAttacher photoViewAttacher = (PhotoViewAttacher) this.delegate;
        Matrix matrix = photoViewAttacher.mSuppMatrix;
        if (photoViewAttacher.getScale() < photoViewAttacher.mMaxScale || f < 1.0f) {
            matrix.postScale(f, f, f2, f3);
            matrix.postTranslate(f4, f5);
            photoViewAttacher.checkAndDisplayMatrix();
        }
    }

    @Override // org.wikipedia.captcha.HCaptchaHelper$Callback
    public void onShow() {
        SVGAndroidRenderer instrument = ContextKt.getInstrument((CreateAccountActivity) this.delegate);
        if (instrument != null) {
            SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_show", null, null, null, null, null, 254);
        }
    }

    @Override // org.wikipedia.captcha.HCaptchaHelper$Callback
    public void onSuccess(String str) {
        str.getClass();
        CreateAccountActivity createAccountActivity = (CreateAccountActivity) this.delegate;
        SVGAndroidRenderer instrument = ContextKt.getInstrument(createAccountActivity);
        if (instrument != null) {
            SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_success", null, null, null, null, null, 254);
        }
        Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
        String str2 = createAccountActivity.getViewModel().token;
        if (str2 == null) {
            str2 = "";
        }
        createAccountActivity.doCreateAccount(str2, str);
    }

    public ModuleAwareClassDescriptor resolveClass(ReflectJavaClass reflectJavaClass) {
        Class cls = reflectJavaClass.klass;
        FqName fqName = reflectJavaClass.getFqName();
        if (LightClassOriginKind.SOURCE != null) {
            Class<?> declaringClass = cls.getDeclaringClass();
            ReflectJavaClass reflectJavaClass2 = declaringClass != null ? new ReflectJavaClass(declaringClass) : null;
            if (reflectJavaClass2 != null) {
                ModuleAwareClassDescriptor resolveClass = resolveClass(reflectJavaClass2);
                MemberScope unsubstitutedInnerClassesScope = resolveClass != null ? resolveClass.getUnsubstitutedInnerClassesScope() : null;
                ClassifierDescriptor contributedClassifier = unsubstitutedInnerClassesScope != null ? unsubstitutedInnerClassesScope.getContributedClassifier(Name.identifier(cls.getSimpleName()), NoLookupLocation.FROM_JAVA_LOADER) : null;
                if (contributedClassifier instanceof ModuleAwareClassDescriptor) {
                    return (ModuleAwareClassDescriptor) contributedClassifier;
                }
            } else {
                LazyJavaPackageFragment lazyJavaPackageFragment = (LazyJavaPackageFragment) CollectionsKt.firstOrNull(Room.listOf(((LazyJavaPackageFragmentProvider) this.delegate).getPackageFragment(fqName.parent())));
                if (lazyJavaPackageFragment != null) {
                    LazyJavaPackageScope lazyJavaPackageScope = lazyJavaPackageFragment.scope.javaScope;
                    lazyJavaPackageScope.getClass();
                    return lazyJavaPackageScope.findClassifier(Name.identifier(cls.getSimpleName()), reflectJavaClass);
                }
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setAdditionalAnnotations(Annotations annotations) {
        annotations.getClass();
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setKind(CallableMemberDescriptor.Kind kind) {
        kind.getClass();
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setReturnType(KotlinType kotlinType) {
        kotlinType.getClass();
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setVisibility(DescriptorVisibilities.AnonymousClass1 anonymousClass1) {
        anonymousClass1.getClass();
        return this;
    }

    public void submitEvent(String str, String str2, String str3) {
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        EventPlatformClient.submit(new AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl(str, str2, str3, ((Constants.InvokeSource) this.delegate).getValue()));
    }

    @Override // org.jsoup.select.NodeVisitor
    public void tail(int i, Node node) {
        StringBuilder sb = (StringBuilder) this.delegate;
        if (node instanceof Element) {
            Element element = (Element) node;
            Tag tag = element.tag;
            Node nextSibling = node.nextSibling();
            if (!tag.is(1024) && (tag.options & 4) == 0) {
                for (int i2 = 0; i2 < element.childNodes.size(); i2++) {
                    Node childNode = element.childNode(i2);
                    if (!(childNode instanceof Element) || !((Element) childNode).isBlock()) {
                    }
                }
                return;
            }
            if (((nextSibling instanceof TextNode) || ((nextSibling instanceof Element) && (((Element) nextSibling).tag.options & 4) == 0)) && !TextNode.lastCharIsWhitespace(sb)) {
                sb.append(' ');
            }
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 6:
                StringBuilder sb = new StringBuilder();
                LazyJavaPackageFragment lazyJavaPackageFragment = (LazyJavaPackageFragment) this.delegate;
                sb.append(lazyJavaPackageFragment);
                sb.append(": ");
                sb.append(((Map) DpKt.getValue(lazyJavaPackageFragment.binaryClasses$delegate, LazyJavaPackageFragment.$$delegatedProperties[0])).keySet());
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.SimpleLock
    public void unlock() {
        ((ReentrantLock) this.delegate).unlock();
    }

    public Object visitClassDescriptor(ModuleAwareClassDescriptor moduleAwareClassDescriptor, Object obj) {
        ClassConstructorDescriptorImpl unsubstitutedPrimaryConstructor;
        String str;
        switch (this.$r8$classId) {
            case 2:
                return null;
            default:
                StringBuilder sb = (StringBuilder) obj;
                DescriptorRendererImpl descriptorRendererImpl = (DescriptorRendererImpl) this.delegate;
                DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = descriptorRendererImpl.options;
                boolean z = moduleAwareClassDescriptor.getKind() == ClassKind.ENUM_ENTRY;
                if (!descriptorRendererImpl.getStartFromName()) {
                    descriptorRendererImpl.renderAnnotations(sb, moduleAwareClassDescriptor, null);
                    List contextReceivers = moduleAwareClassDescriptor.getContextReceivers();
                    contextReceivers.getClass();
                    descriptorRendererImpl.renderContextReceivers(sb, contextReceivers);
                    if (!z) {
                        DescriptorVisibilities.AnonymousClass1 visibility = moduleAwareClassDescriptor.getVisibility();
                        visibility.getClass();
                        descriptorRendererImpl.renderVisibility(visibility, sb);
                    }
                    if ((moduleAwareClassDescriptor.getKind() != ClassKind.INTERFACE || moduleAwareClassDescriptor.getModality() != Modality.ABSTRACT) && (!moduleAwareClassDescriptor.getKind().isSingleton() || moduleAwareClassDescriptor.getModality() != Modality.FINAL)) {
                        Modality modality = moduleAwareClassDescriptor.getModality();
                        modality.getClass();
                        descriptorRendererImpl.renderModality(modality, sb, DescriptorRendererImpl.implicitModalityWithoutExtensions(moduleAwareClassDescriptor));
                    }
                    descriptorRendererImpl.renderMemberModifiers(moduleAwareClassDescriptor, sb);
                    descriptorRendererImpl.renderModifier("inner", sb, descriptorRendererImpl.getModifiers().contains(DescriptorRendererModifier.INNER) && moduleAwareClassDescriptor.isInner());
                    descriptorRendererImpl.renderModifier("data", sb, descriptorRendererImpl.getModifiers().contains(DescriptorRendererModifier.DATA) && moduleAwareClassDescriptor.isData());
                    descriptorRendererImpl.renderModifier("inline", sb, descriptorRendererImpl.getModifiers().contains(DescriptorRendererModifier.INLINE) && moduleAwareClassDescriptor.isInline());
                    descriptorRendererImpl.renderModifier("value", sb, descriptorRendererImpl.getModifiers().contains(DescriptorRendererModifier.VALUE) && moduleAwareClassDescriptor.isValue());
                    descriptorRendererImpl.renderModifier("fun", sb, descriptorRendererImpl.getModifiers().contains(DescriptorRendererModifier.FUN) && moduleAwareClassDescriptor.isFun());
                    if (moduleAwareClassDescriptor.isCompanionObject()) {
                        str = "companion object";
                    } else {
                        switch (DescriptorRenderer$Companion$WhenMappings.$EnumSwitchMapping$0[moduleAwareClassDescriptor.getKind().ordinal()]) {
                            case 1:
                                str = "class";
                                break;
                            case 2:
                                str = "interface";
                                break;
                            case 3:
                                str = "enum class";
                                break;
                            case 4:
                                str = "object";
                                break;
                            case 5:
                                str = "annotation class";
                                break;
                            case 6:
                                str = "enum entry";
                                break;
                            default:
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return null;
                        }
                    }
                    sb.append(descriptorRendererImpl.renderKeyword(str));
                }
                if (DescriptorUtils.isCompanionObject(moduleAwareClassDescriptor)) {
                    DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.renderCompanionObjectName$delegate;
                    KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[30];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
                    kProperty.getClass();
                    if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue()) {
                        if (descriptorRendererImpl.getStartFromName()) {
                            sb.append("companion object");
                        }
                        DescriptorRendererImpl.renderSpaceIfNeeded(sb);
                        DeclarationDescriptor containingDeclaration = moduleAwareClassDescriptor.getContainingDeclaration();
                        if (containingDeclaration != null) {
                            sb.append("of ");
                            Name name = containingDeclaration.getName();
                            name.getClass();
                            sb.append(descriptorRendererImpl.renderName(name, false));
                        }
                    }
                    if (descriptorRendererImpl.getVerbose() || !Intrinsics.areEqual(moduleAwareClassDescriptor.getName(), SpecialNames.DEFAULT_NAME_FOR_COMPANION_OBJECT)) {
                        if (!descriptorRendererImpl.getStartFromName()) {
                            DescriptorRendererImpl.renderSpaceIfNeeded(sb);
                        }
                        Name name2 = moduleAwareClassDescriptor.getName();
                        name2.getClass();
                        sb.append(descriptorRendererImpl.renderName(name2, true));
                    }
                } else {
                    if (!descriptorRendererImpl.getStartFromName()) {
                        DescriptorRendererImpl.renderSpaceIfNeeded(sb);
                    }
                    descriptorRendererImpl.renderName(moduleAwareClassDescriptor, sb, true);
                }
                if (!z) {
                    List declaredTypeParameters = moduleAwareClassDescriptor.getDeclaredTypeParameters();
                    declaredTypeParameters.getClass();
                    descriptorRendererImpl.renderTypeParameters(sb, declaredTypeParameters, false);
                    descriptorRendererImpl.renderCapturedTypeParametersIfRequired(moduleAwareClassDescriptor, sb);
                    if (!moduleAwareClassDescriptor.getKind().isSingleton()) {
                        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$12 = descriptorRendererOptionsImpl.classWithPrimaryConstructor$delegate;
                        KProperty kProperty2 = DescriptorRendererOptionsImpl.$$delegatedProperties[7];
                        descriptorRendererOptionsImpl$property$$inlined$vetoable$12.getClass();
                        kProperty2.getClass();
                        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$12.value).booleanValue() && (unsubstitutedPrimaryConstructor = moduleAwareClassDescriptor.getUnsubstitutedPrimaryConstructor()) != null) {
                            sb.append(" ");
                            descriptorRendererImpl.renderAnnotations(sb, unsubstitutedPrimaryConstructor, null);
                            DescriptorVisibilities.AnonymousClass1 visibility2 = unsubstitutedPrimaryConstructor.getVisibility();
                            visibility2.getClass();
                            descriptorRendererImpl.renderVisibility(visibility2, sb);
                            sb.append(descriptorRendererImpl.renderKeyword("constructor"));
                            List valueParameters = unsubstitutedPrimaryConstructor.getValueParameters();
                            valueParameters.getClass();
                            descriptorRendererImpl.renderValueParameters(sb, valueParameters, unsubstitutedPrimaryConstructor.hasSynthesizedParameterNames());
                        }
                    }
                    DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$13 = descriptorRendererOptionsImpl.withoutSuperTypes$delegate;
                    KProperty kProperty3 = DescriptorRendererOptionsImpl.$$delegatedProperties[21];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$13.getClass();
                    kProperty3.getClass();
                    if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$13.value).booleanValue() && !KotlinBuiltIns.isNothing(moduleAwareClassDescriptor.getDefaultType())) {
                        Collection supertypes = moduleAwareClassDescriptor.getTypeConstructor().getSupertypes();
                        supertypes.getClass();
                        if (!supertypes.isEmpty() && (supertypes.size() != 1 || !KotlinBuiltIns.isAnyOrNullableAny((KotlinType) supertypes.iterator().next()))) {
                            DescriptorRendererImpl.renderSpaceIfNeeded(sb);
                            sb.append(": ");
                            CollectionsKt.joinTo$default(supertypes, sb, ", ", null, null, new DescriptorRendererImpl$renderConstant$1(descriptorRendererImpl, 2), 60);
                        }
                    }
                    descriptorRendererImpl.renderWhereSuffix(sb, declaredTypeParameters);
                }
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object visitConstructorDescriptor(kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl r11, java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ConnectionPool.visitConstructorDescriptor(kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl, java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b9, code lost:
    
        if (((java.lang.Boolean) r2.value).booleanValue() != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0101, code lost:
    
        if (((java.lang.Boolean) r1.value).booleanValue() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01d4, code lost:
    
        if (kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.isNotNullConstructedFromGivenClass(r1, kotlin.reflect.jvm.internal.impl.builtins.StandardNames.FqNames.unit) == false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitFunctionDescriptor(kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r10, java.lang.StringBuilder r11) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ConnectionPool.visitFunctionDescriptor(kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, java.lang.StringBuilder):void");
    }

    public void visitPropertyAccessorDescriptor(PropertyAccessorDescriptorImpl propertyAccessorDescriptorImpl, StringBuilder sb, String str) {
        DescriptorRendererImpl descriptorRendererImpl = (DescriptorRendererImpl) this.delegate;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererImpl.options.propertyAccessorRenderingPolicy$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[31];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        int i = DescriptorRendererImpl$RenderDeclarationDescriptorVisitor$WhenMappings.$EnumSwitchMapping$0[((PropertyAccessorRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).ordinal()];
        if (i != 1) {
            if (i != 2) {
                return;
            }
            visitFunctionDescriptor((FunctionDescriptor) propertyAccessorDescriptorImpl, sb);
        } else {
            descriptorRendererImpl.renderMemberModifiers(propertyAccessorDescriptorImpl, sb);
            sb.append(str.concat(" for "));
            descriptorRendererImpl.renderProperty(propertyAccessorDescriptorImpl.correspondingProperty, sb);
        }
    }

    public Object visitPropertyDescriptor(PropertyDescriptorImpl propertyDescriptorImpl, Object obj) {
        switch (this.$r8$classId) {
            case 2:
                KDeclarationContainerImpl kDeclarationContainerImpl = (KDeclarationContainerImpl) this.delegate;
                int i = (propertyDescriptorImpl.dispatchReceiverParameter != null ? 1 : 0) + (propertyDescriptorImpl.extensionReceiverParameter != null ? 1 : 0);
                if (propertyDescriptorImpl.isVar) {
                    if (i == 0) {
                        return new KMutableProperty0Impl(kDeclarationContainerImpl, propertyDescriptorImpl);
                    }
                    if (i == 1) {
                        return new KMutableProperty1Impl(kDeclarationContainerImpl, propertyDescriptorImpl);
                    }
                    if (i == 2) {
                        return new KMutableProperty2Impl(kDeclarationContainerImpl, propertyDescriptorImpl);
                    }
                } else {
                    if (i == 0) {
                        return new KProperty0Impl(kDeclarationContainerImpl, propertyDescriptorImpl);
                    }
                    if (i == 1) {
                        return new KProperty1Impl(kDeclarationContainerImpl, propertyDescriptorImpl);
                    }
                    if (i == 2) {
                        return new KProperty2Impl(kDeclarationContainerImpl, propertyDescriptorImpl);
                    }
                }
                Gson$$ExternalSyntheticBUOutline0.m$6("Unsupported property: ", propertyDescriptorImpl);
                return null;
            default:
                ((DescriptorRendererImpl) this.delegate).renderProperty(propertyDescriptorImpl, (StringBuilder) obj);
                return Unit.INSTANCE;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder putUserData() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setCopyOverrides() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setHiddenForResolutionEverywhereBesideSupercalls() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setHiddenToOvercomeSignatureClash() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setPreserveSourceElement() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setSignatureChange() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setTypeParameters() {
        return this;
    }

    private final void onListChipClick$org$wikipedia$categories$CategoryActivity$ItemCallback(ReadingList readingList) {
    }

    private final void onListChipClick$org$wikipedia$categories$CategoryDialog$ItemCallback(ReadingList readingList) {
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setDispatchReceiverParameter(ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl) {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setModality(Modality modality) {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setName(Name name) {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setOwner(DeclarationDescriptor declarationDescriptor) {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
    public FunctionDescriptor.CopyBuilder setValueParameters(List list) {
        return this;
    }

    @Override // org.wikipedia.gallery.MediaDownloadReceiver.Callback
    public void onSuccess() {
        ShareUtil.showMessage(R.string.gallery_save_success, (FilePageFragment) this.delegate);
    }

    public /* synthetic */ ConnectionPool(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.delegate = obj2;
    }

    public ConnectionPool(LanguageScrollView languageScrollView, TabLayout tabLayout, Button button) {
        this.$r8$classId = 28;
        this.delegate = tabLayout;
    }

    public /* synthetic */ ConnectionPool(int i, Object obj) {
        this.$r8$classId = i;
        this.delegate = obj;
    }

    public ConnectionPool(_UtilJvmKt$$ExternalSyntheticLambda1 _utiljvmkt__externalsyntheticlambda1) {
        this.$r8$classId = 14;
        this.delegate = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), _utiljvmkt__externalsyntheticlambda1);
    }

    public Object visitFunctionDescriptor(FunctionDescriptor functionDescriptor, Object obj) {
        switch (this.$r8$classId) {
            case 2:
                return new KFunctionImpl((KDeclarationContainerImpl) this.delegate, functionDescriptor);
            default:
                visitFunctionDescriptor(functionDescriptor, (StringBuilder) obj);
                return Unit.INSTANCE;
        }
    }
}
