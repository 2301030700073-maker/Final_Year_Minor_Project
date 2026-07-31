package kotlinx.serialization.json.internal;

import androidx.appcompat.app.ToolbarActionBar;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.sqlite.SQLite;
import io.reactivex.rxjava3.functions.Consumer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer;
import org.schabi.newpipe.player.playqueue.PlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Composer implements MenuPresenter.Callback, Consumer {
    public final Object writer;
    public boolean writingFirst;

    public Composer(InternalJsonWriter internalJsonWriter) {
        this.writer = internalJsonWriter;
        this.writingFirst = true;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        PlayQueue playQueue = (PlayQueue) obj;
        playQueue.getClass();
        MediaBrowserPlaybackPreparer mediaBrowserPlaybackPreparer = (MediaBrowserPlaybackPreparer) this.writer;
        mediaBrowserPlaybackPreparer.clearMediaSessionError.run();
        SQLite.playOnBackgroundPlayer(mediaBrowserPlaybackPreparer.context, playQueue, this.writingFirst);
    }

    public boolean defaultIsRtl() {
        return this.writingFirst;
    }

    public void indent() {
        this.writingFirst = true;
    }

    public boolean isRtl(int i, CharSequence charSequence) {
        if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return false;
        }
        if (((TextDirectionHeuristicsCompat.FirstStrong) this.writer) == null) {
            return defaultIsRtl();
        }
        char c = 2;
        for (int i2 = 0; i2 < i && c == 2; i2++) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i2));
            Composer composer = TextDirectionHeuristicsCompat.LTR;
            if (directionality != 0) {
                if (directionality != 1 && directionality != 2) {
                    switch (directionality) {
                        case 14:
                        case 15:
                            break;
                        case 16:
                        case 17:
                            break;
                        default:
                            c = 2;
                            break;
                    }
                }
                c = 0;
            }
            c = 1;
        }
        if (c == 0) {
            return true;
        }
        if (c != 1) {
            return defaultIsRtl();
        }
        return false;
    }

    public void nextItem() {
        this.writingFirst = false;
    }

    public void nextItemIfNotFirst() {
        this.writingFirst = false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        ActionMenuPresenter actionMenuPresenter;
        ToolbarActionBar toolbarActionBar = (ToolbarActionBar) this.writer;
        if (this.writingFirst) {
            return;
        }
        this.writingFirst = true;
        ActionMenuView actionMenuView = toolbarActionBar.mDecorToolbar.mToolbar.mMenuView;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.mPresenter) != null) {
            actionMenuPresenter.hideOverflowMenu();
            ActionMenuPresenter.OverflowPopup overflowPopup = actionMenuPresenter.mActionButtonPopup;
            if (overflowPopup != null && overflowPopup.isShowing()) {
                overflowPopup.mPopup.dismiss();
            }
        }
        toolbarActionBar.mWindowCallback.onPanelClosed(Token.ASSIGN_ADD, menuBuilder);
        this.writingFirst = false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        ((ToolbarActionBar) this.writer).mWindowCallback.onMenuOpened(Token.ASSIGN_ADD, menuBuilder);
        return true;
    }

    public void print(byte b) {
        ((InternalJsonWriter) this.writer).writeLong(b);
    }

    public void printQuoted(String str) {
        str.getClass();
        ((InternalJsonWriter) this.writer).writeQuoted(str);
    }

    public /* synthetic */ Composer(Object obj, boolean z) {
        this.writer = obj;
        this.writingFirst = z;
    }

    public void print(char c) {
        ((InternalJsonWriter) this.writer).writeChar(c);
    }

    public /* synthetic */ Composer(Object obj) {
        this.writer = obj;
    }

    public void print(short s) {
        ((InternalJsonWriter) this.writer).writeLong(s);
    }

    public Composer(boolean z, String str) {
        this.writingFirst = z;
        this.writer = str;
    }

    public void print(int i) {
        ((InternalJsonWriter) this.writer).writeLong(i);
    }

    public void print(long j) {
        ((InternalJsonWriter) this.writer).writeLong(j);
    }

    public Composer(TextDirectionHeuristicsCompat.FirstStrong firstStrong, boolean z) {
        this(firstStrong);
        this.writingFirst = z;
    }

    public void space() {
    }

    public void unIndent() {
    }
}
