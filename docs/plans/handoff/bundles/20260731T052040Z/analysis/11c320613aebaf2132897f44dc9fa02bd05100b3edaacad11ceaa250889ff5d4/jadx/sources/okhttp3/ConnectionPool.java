package okhttp3;

import android.view.View;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.recyclerview.widget.ListUpdateCallback;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.request.Disposable;
import com.google.android.exoplayer2.util.Log;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.MaterialCheckable;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonTokener;
import com.xwray.groupie.GroupAdapter;
import com.xwray.groupie.Section;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableCombineLatest;
import j$.util.Objects;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.text.Charsets;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;
import kotlinx.serialization.json.internal.CharsetReader;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda2;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealConnectionPool;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.connection.RoutePlanner$ConnectResult;
import okhttp3.internal.connection.RoutePlanner$Plan;
import okio.PriorityQueue;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Tag;
import org.jsoup.select.NodeVisitor;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.list.BaseListFragment;
import org.schabi.newpipe.util.OnClickGesture;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ConnectionPool implements Disposable, OnApplyWindowInsetsListener, AccessibilityViewCommand, MaterialCheckable.OnCheckedChangeListener, ListUpdateCallback, Consumer, Function, CompletableObserver, ExchangeFinder, NodeVisitor, OnClickGesture {
    public final /* synthetic */ int $r8$classId;
    public Object delegate;

    public ConnectionPool(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 8:
                break;
            case 21:
                this.delegate = new LinkedHashSet();
                break;
            case 28:
                this.delegate = new PriorityQueue[3];
                break;
            default:
                TimeUnit.MINUTES.getClass();
                TaskRunner taskRunner = TaskRunner.INSTANCE;
                taskRunner.getClass();
                this.delegate = new RealConnectionPool(taskRunner);
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        switch (this.$r8$classId) {
            case 14:
                ((OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) this.delegate).run();
                break;
            default:
                ((Unit) obj).getClass();
                ((Runnable) this.delegate).run();
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 15:
                Object[] objArr = (Object[]) obj;
                if (objArr.length == 2) {
                    return ((BiFunction) this.delegate).apply(objArr[0], objArr[1]);
                }
                DecodeUtils$$ExternalSyntheticBUOutline0.m(objArr.length, "Array of size 2 expected but got ");
                return null;
            default:
                return ((FlowableCombineLatest) this.delegate).combiner.apply(new Object[]{obj});
        }
    }

    public synchronized void connected(Route route) {
        route.getClass();
        ((LinkedHashSet) this.delegate).remove(route);
    }

    @Override // coil3.request.Disposable
    public void dispose() {
        DeferredCoroutine deferredCoroutine = (DeferredCoroutine) this.delegate;
        if (deferredCoroutine.isActive()) {
            deferredCoroutine.cancel(null);
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
                    ResultKt.addSuppressed(iOException, e);
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
        _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Canceled");
        return null;
    }

    public Object from(String str) {
        return new JsonParser(new JsonTokener(new StringReader(str))).parse((Class) this.delegate);
    }

    @Override // coil3.request.Disposable
    public Deferred getJob() {
        return (DeferredCoroutine) this.delegate;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealRoutePlanner getRoutePlanner() {
        return (RealRoutePlanner) this.delegate;
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(Node node, int i) {
        char c;
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
                    while (node2 != null) {
                        char c2 = 1;
                        if (!(node2 instanceof TextNode) || StringUtil.isBlank(((TextNode) node2).coreValue())) {
                            c = 1;
                        } else {
                            atomicBoolean.set(true);
                            c = 5;
                        }
                        if (c == 5) {
                            break;
                        }
                        if (c != 1 || node2.childNodeSize() <= 0) {
                            while (node2.nextSibling() == null && i2 > 0) {
                                if (c == 1 || c == 2) {
                                    c = 1;
                                }
                                Element element2 = node2.parentNode;
                                i2--;
                                if (c == 4) {
                                    node2.remove();
                                }
                                c = 1;
                                node2 = element2;
                            }
                            if (c != 1 && c != 2) {
                                c2 = c;
                            }
                            if (node2 == element) {
                                break;
                            }
                            Node nextSibling = node2.nextSibling();
                            if (c2 == 4) {
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

    @Override // org.schabi.newpipe.util.OnClickGesture
    public void held(Object obj) {
        ((BaseListFragment) this.delegate).showInfoItemDialog((StreamInfoItem) obj);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2;
        switch (this.$r8$classId) {
            case 2:
                AppBarLayout appBarLayout = (AppBarLayout) this.delegate;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                windowInsetsCompat2 = appBarLayout.getFitsSystemWindows() ? windowInsetsCompat : null;
                if (!Objects.equals(appBarLayout.lastInsets, windowInsetsCompat2)) {
                    appBarLayout.lastInsets = windowInsetsCompat2;
                    appBarLayout.setWillNotDraw(!(appBarLayout.statusBarForeground != null && appBarLayout.getTopInset() > 0));
                    appBarLayout.requestLayout();
                }
                return windowInsetsCompat;
            default:
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) this.delegate;
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                windowInsetsCompat2 = collapsingToolbarLayout.getFitsSystemWindows() ? windowInsetsCompat : null;
                if (!Objects.equals(collapsingToolbarLayout.lastInsets, windowInsetsCompat2)) {
                    collapsingToolbarLayout.lastInsets = windowInsetsCompat2;
                    collapsingToolbarLayout.requestLayout();
                }
                return windowInsetsCompat.mImpl.consumeSystemWindowInsets();
        }
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i, int i2, Object obj) {
        switch (this.$r8$classId) {
            case 11:
                ((GroupAdapter) this.delegate).notifyItemRangeChanged(i, i2, obj);
                break;
            default:
                Section section = (Section) this.delegate;
                section.observable.onItemRangeChanged(section, section.getHeaderItemCount() + i, i2, obj);
                break;
        }
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onComplete() {
        ((CompletableObserver) this.delegate).onComplete();
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable th) {
        ((CompletableObserver) this.delegate).onComplete();
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i, int i2) {
        switch (this.$r8$classId) {
            case 11:
                ((GroupAdapter) this.delegate).notifyItemRangeInserted(i, i2);
                break;
            default:
                Section section = (Section) this.delegate;
                section.notifyItemRangeInserted(section.getHeaderItemCount() + i, i2);
                break;
        }
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i, int i2) {
        switch (this.$r8$classId) {
            case 11:
                ((GroupAdapter) this.delegate).notifyItemMoved(i, i2);
                break;
            default:
                Section section = (Section) this.delegate;
                int headerItemCount = section.getHeaderItemCount();
                section.observable.onItemMoved(section, i + headerItemCount, headerItemCount + i2);
                break;
        }
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i, int i2) {
        switch (this.$r8$classId) {
            case 11:
                ((GroupAdapter) this.delegate).notifyItemRangeRemoved(i, i2);
                break;
            default:
                Section section = (Section) this.delegate;
                section.observable.onItemRangeRemoved(section, section.getHeaderItemCount() + i, i2);
                break;
        }
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(io.reactivex.rxjava3.disposables.Disposable disposable) {
        ((CompletableObserver) this.delegate).onSubscribe(disposable);
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view) {
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.delegate;
        if (!swipeDismissBehavior.canSwipeDismissView(view)) {
            return false;
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        boolean z = view.getLayoutDirection() == 1;
        int i = swipeDismissBehavior.swipeDirection;
        view.offsetLeftAndRight((!(i == 0 && z) && (i != 1 || z)) ? view.getWidth() : -view.getWidth());
        view.setAlpha(0.0f);
        BaseTransientBottomBar.AnonymousClass3 anonymousClass3 = swipeDismissBehavior.listener;
        if (anonymousClass3 != null) {
            anonymousClass3.onDismiss(view);
        }
        return true;
    }

    public void push(PriorityQueue priorityQueue) {
        int i = 0;
        while (i < 3) {
            PriorityQueue[] priorityQueueArr = (PriorityQueue[]) this.delegate;
            PriorityQueue priorityQueue2 = priorityQueueArr[i];
            priorityQueueArr[i] = priorityQueue;
            i++;
            priorityQueue = priorityQueue2;
        }
    }

    @Override // org.schabi.newpipe.util.OnClickGesture
    public void selected(Object obj) {
        StreamInfoItem streamInfoItem = (StreamInfoItem) obj;
        BaseListFragment baseListFragment = (BaseListFragment) this.delegate;
        int i = BaseListFragment.$r8$clinit;
        baseListFragment.onItemSelected();
        SQLite.openVideoDetailFragment(baseListFragment.requireContext(), baseListFragment.getFM(), streamInfoItem.getServiceId(), streamInfoItem.getUrl(), streamInfoItem.getName(), null, false);
    }

    @Override // org.jsoup.select.NodeVisitor
    public void tail(Node node, int i) {
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

    @Override // org.schabi.newpipe.util.OnClickGesture
    public /* synthetic */ void drag(Object obj, RecyclerView.ViewHolder viewHolder) {
    }

    public ConnectionPool(Function1 function1) {
        this.$r8$classId = 26;
        function1.getClass();
        this.delegate = function1;
    }

    public /* synthetic */ ConnectionPool(Object obj, int i) {
        this.$r8$classId = i;
        this.delegate = obj;
    }

    public ConnectionPool(InputStream inputStream) {
        this.$r8$classId = 18;
        this.delegate = new CharsetReader(inputStream, Charsets.UTF_8);
    }

    public ConnectionPool(_UtilJvmKt$$ExternalSyntheticLambda2 _utiljvmkt__externalsyntheticlambda2) {
        this.$r8$classId = 20;
        this.delegate = new ThreadPoolExecutor(0, Log.LOG_LEVEL_OFF, 60L, TimeUnit.SECONDS, new SynchronousQueue(), _utiljvmkt__externalsyntheticlambda2);
    }
}
