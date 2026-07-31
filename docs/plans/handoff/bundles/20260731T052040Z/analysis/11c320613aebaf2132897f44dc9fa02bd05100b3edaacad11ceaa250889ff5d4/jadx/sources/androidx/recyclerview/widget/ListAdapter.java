package androidx.recyclerview.widget;

import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import java.util.concurrent.Executors;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ListAdapter extends RecyclerView.Adapter {
    final AsyncListDiffer mDiffer;
    private final AsyncListDiffer.ListListener mListener;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.recyclerview.widget.ListAdapter$1, reason: invalid class name */
    public final class AnonymousClass1 implements AsyncListDiffer.ListListener {
        public AnonymousClass1() {
        }
    }

    public ListAdapter(DiffUtil diffUtil) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mListener = anonymousClass1;
        OpReorderer opReorderer = new OpReorderer(this);
        synchronized (DiffUtil.sExecutorLock) {
            try {
                if (DiffUtil.sDiffExecutor == null) {
                    DiffUtil.sDiffExecutor = Executors.newFixedThreadPool(2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        AsyncListDiffer asyncListDiffer = new AsyncListDiffer(opReorderer, new CardView.AnonymousClass1(28, DiffUtil.sDiffExecutor, diffUtil, false));
        this.mDiffer = asyncListDiffer;
        asyncListDiffer.mListeners.add(anonymousClass1);
    }

    public List<Object> getCurrentList() {
        return this.mDiffer.mReadOnlyList;
    }

    public Object getItem(int i) {
        return this.mDiffer.mReadOnlyList.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mDiffer.mReadOnlyList.size();
    }

    public void submitList(List<Object> list) {
        this.mDiffer.submitList(list, null);
    }

    public void submitList(List<Object> list, Runnable runnable) {
        this.mDiffer.submitList(list, runnable);
    }

    public void onCurrentListChanged(List<Object> list, List<Object> list2) {
    }
}
