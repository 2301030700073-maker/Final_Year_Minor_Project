package org.wikipedia.dataclient;

import android.location.Location;
import androidx.compose.runtime.Applier;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikimedia.testkitchen.config.StreamConfigCollection;
import org.wikipedia.captcha.Captcha;
import org.wikipedia.dataclient.discussiontools.DiscussionToolsEditResponse;
import org.wikipedia.dataclient.discussiontools.DiscussionToolsInfoResponse;
import org.wikipedia.dataclient.discussiontools.DiscussionToolsSubscribeResponse;
import org.wikipedia.dataclient.discussiontools.DiscussionToolsSubscriptionList;
import org.wikipedia.dataclient.mwapi.CreateAccountResponse;
import org.wikipedia.dataclient.mwapi.MwParseResponse;
import org.wikipedia.dataclient.mwapi.MwPostResponse;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.dataclient.mwapi.ShortenUrlResponse;
import org.wikipedia.dataclient.mwapi.SiteMatrix;
import org.wikipedia.dataclient.mwapi.TemplateDataResponse;
import org.wikipedia.dataclient.rollback.RollbackPostResponse;
import org.wikipedia.dataclient.watch.WatchPostResponse;
import org.wikipedia.dataclient.wikidata.Claims;
import org.wikipedia.dataclient.wikidata.Entities;
import org.wikipedia.dataclient.wikidata.EntityPostResponse;
import org.wikipedia.dataclient.wikidata.Search;
import org.wikipedia.edit.Edit;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.db.HistoryEntryWithImage;
import org.wikipedia.login.LoginResponse;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.db.ReadingListDao_Impl;
import org.wikipedia.util.Resource;
import retrofit2.Response;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J2\u0010\b\u001a\u00020\u00072\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00042\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0004H§@¢\u0006\u0004\b\b\u0010\tJ8\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\n2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00042\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0004H§@¢\u0006\u0004\b\u000b\u0010\tJ2\u0010\u000e\u001a\u00020\u00072\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\f\u001a\u00020\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0004H§@¢\u0006\u0004\b\u000e\u0010\tJD\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\n2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\f\u001a\u00020\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0003\u0010\u0010\u001a\u0004\u0018\u00010\u000fH§@¢\u0006\u0004\b\u0011\u0010\u0012J$\u0010\u0014\u001a\u00020\u00072\b\b\u0001\u0010\u0013\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\u0014\u0010\u0015J0\u0010\u0016\u001a\u00020\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0004H§@¢\u0006\u0004\b\u0016\u0010\tJ0\u0010\u0017\u001a\u00020\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0004H§@¢\u0006\u0004\b\u0017\u0010\tJP\u0010\u001b\u001a\u00020\u00072\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\f\u001a\u00020\u00042\b\b\u0001\u0010\u0018\u001a\u00020\u00042\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\u00042\b\b\u0003\u0010\u0019\u001a\u00020\u00042\b\b\u0003\u0010\u001a\u001a\u00020\u0004H§@¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u001dH§@¢\u0006\u0004\b\u001e\u0010\u001fJ\u001a\u0010!\u001a\u00020\u00072\b\b\u0001\u0010 \u001a\u00020\u0002H§@¢\u0006\u0004\b!\u0010\"J(\u0010%\u001a\u00020\u00072\n\b\u0003\u0010#\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010$\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b%\u0010&J\u001c\u0010'\u001a\u00020\u00072\n\b\u0003\u0010$\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b'\u0010\"J\u001c\u0010(\u001a\u00020\u00072\n\b\u0003\u0010$\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b(\u0010\"J\u001a\u0010)\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0004\b)\u0010\"J$\u0010+\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u00022\b\b\u0001\u0010*\u001a\u00020\u0002H§@¢\u0006\u0004\b+\u0010&J$\u0010,\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u00022\b\b\u0001\u0010*\u001a\u00020\u0002H§@¢\u0006\u0004\b,\u0010&J.\u0010/\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u00022\b\b\u0001\u0010-\u001a\u00020\u00022\b\b\u0001\u0010.\u001a\u00020\u0002H§@¢\u0006\u0004\b/\u00100J\u001a\u00101\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0004\b1\u0010\"J\u001a\u00102\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0004\b2\u0010\"J\u0010\u00104\u001a\u000203H§@¢\u0006\u0004\b4\u0010\u001fJ@\u00108\u001a\u00020\u00072\n\b\u0001\u0010 \u001a\u0004\u0018\u00010\u00022\n\b\u0003\u00105\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u00106\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u00107\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b8\u00109J\u0010\u0010:\u001a\u00020\u0007H§@¢\u0006\u0004\b:\u0010\u001fJ\u0010\u0010;\u001a\u00020\u0007H§@¢\u0006\u0004\b;\u0010\u001fJ\u001a\u0010>\u001a\u00020=2\b\b\u0001\u0010<\u001a\u00020\u0002H§@¢\u0006\u0004\b>\u0010\"J\u001a\u0010@\u001a\u00020=2\b\b\u0001\u0010?\u001a\u00020\u0002H§@¢\u0006\u0004\b@\u0010\"J\u001a\u0010B\u001a\u00020=2\b\b\u0001\u0010A\u001a\u00020\u0002H§@¢\u0006\u0004\bB\u0010\"J\u001a\u0010C\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0004\bC\u0010\"J\u001a\u0010D\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0004\bD\u0010\"J:\u0010H\u001a\u00020\u00072\b\b\u0001\u0010 \u001a\u00020\u00022\b\b\u0001\u0010E\u001a\u00020\u00022\b\b\u0001\u0010F\u001a\u00020\u00042\n\b\u0001\u0010G\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\bH\u0010IJ\u001a\u0010J\u001a\u00020\u00072\b\b\u0003\u0010F\u001a\u00020\u0004H§@¢\u0006\u0004\bJ\u0010KJ\u001a\u0010L\u001a\u00020\u00072\b\b\u0003\u0010F\u001a\u00020\u0004H§@¢\u0006\u0004\bL\u0010KJ\u001a\u0010M\u001a\u00020\u00072\b\b\u0003\u0010F\u001a\u00020\u0004H§@¢\u0006\u0004\bM\u0010KJT\u0010R\u001a\u00020\u00072\b\b\u0001\u0010F\u001a\u00020\u00042\b\b\u0001\u0010N\u001a\u00020\u00022\n\b\u0001\u0010O\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010P\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010Q\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010G\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\bR\u0010SJ\u0010\u0010U\u001a\u00020TH§@¢\u0006\u0004\bU\u0010\u001fJ2\u0010X\u001a\u00020\u00072\b\b\u0001\u0010V\u001a\u00020\u00022\n\b\u0001\u0010W\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010*\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\bX\u00100J\u001a\u0010[\u001a\u00020Z2\b\b\u0001\u0010Y\u001a\u00020\u0002H§@¢\u0006\u0004\b[\u0010\"J8\u0010`\u001a\u00020\u00072\b\b\u0001\u0010\\\u001a\u00020\u00022\b\b\u0001\u0010]\u001a\u00020\u00042\b\b\u0001\u0010^\u001a\u00020\u00042\b\b\u0001\u0010_\u001a\u00020\u0004H§@¢\u0006\u0004\b`\u0010aJ8\u0010b\u001a\u00020\u00072\b\b\u0001\u0010\\\u001a\u00020\u00022\b\b\u0001\u0010]\u001a\u00020\u00042\b\b\u0001\u0010^\u001a\u00020\u00042\b\b\u0001\u0010_\u001a\u00020\u0004H§@¢\u0006\u0004\bb\u0010aJ\u001a\u0010c\u001a\u00020\u00072\b\b\u0003\u0010E\u001a\u00020\u0002H§@¢\u0006\u0004\bc\u0010\"Jf\u0010m\u001a\u00020l2\b\b\u0001\u0010d\u001a\u00020\u00022\b\b\u0001\u0010e\u001a\u00020\u00022\b\b\u0001\u0010f\u001a\u00020\u00022\b\b\u0001\u0010g\u001a\u00020\u00022\b\b\u0001\u0010h\u001a\u00020\u00022\n\b\u0001\u0010i\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010j\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010k\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\bm\u0010nJ\u0010\u0010o\u001a\u00020\u0007H§@¢\u0006\u0004\bo\u0010\u001fJ\u0094\u0001\u0010w\u001a\u00020v2\n\b\u0003\u0010d\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010e\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010f\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010p\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010q\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010j\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010k\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010r\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010s\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010t\u001a\u0004\u0018\u00010\u000f2\n\b\u0003\u0010u\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\bw\u0010xJ\u001a\u0010z\u001a\u00020y2\b\b\u0001\u0010g\u001a\u00020\u0002H§@¢\u0006\u0004\bz\u0010\"J\u0010\u0010{\u001a\u00020\u0007H§@¢\u0006\u0004\b{\u0010\u001fJ\u0010\u0010|\u001a\u00020\u0007H§@¢\u0006\u0004\b|\u0010\u001fJ\u0010\u0010}\u001a\u00020\u0007H§@¢\u0006\u0004\b}\u0010\u001fJ\u0010\u0010~\u001a\u00020\u0007H§@¢\u0006\u0004\b~\u0010\u001fJ\u001c\u0010\u0080\u0001\u001a\u00020\u00072\b\b\u0001\u0010\u007f\u001a\u00020\u0002H§@¢\u0006\u0005\b\u0080\u0001\u0010\"J&\u0010\u0081\u0001\u001a\u00020\u00072\b\b\u0001\u0010\u007f\u001a\u00020\u00022\b\b\u0001\u0010V\u001a\u00020\u0002H§@¢\u0006\u0005\b\u0081\u0001\u0010&J\u001c\u0010\u0082\u0001\u001a\u00020\u00072\b\b\u0001\u0010\u007f\u001a\u00020\u0002H§@¢\u0006\u0005\b\u0082\u0001\u0010\"J\u001d\u0010\u0084\u0001\u001a\u00020\u00072\t\b\u0001\u0010\u0083\u0001\u001a\u00020\u0002H§@¢\u0006\u0005\b\u0084\u0001\u0010\"J+\u0010\u0086\u0001\u001a\u00020\u00072\u000b\b\u0001\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010G\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0005\b\u0086\u0001\u0010&J6\u0010\u0089\u0001\u001a\u00020\u00072\b\b\u0001\u0010g\u001a\u00020\u00022\u000b\b\u0001\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0005\b\u0089\u0001\u00100J\u0012\u0010\u008a\u0001\u001a\u00020\u0007H§@¢\u0006\u0005\b\u008a\u0001\u0010\u001fJ\u0012\u0010\u008b\u0001\u001a\u00020\u0007H§@¢\u0006\u0005\b\u008b\u0001\u0010\u001fJ*\u0010\u008d\u0001\u001a\u00020\u00072\b\b\u0001\u0010 \u001a\u00020\u00022\u000b\b\u0001\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0004H§@¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001Jh\u0010\u0095\u0001\u001a\u00030\u0094\u00012\b\b\u0001\u0010 \u001a\u00020\u00022\u000b\b\u0003\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010d\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010g\u001a\u00020\u00022\n\b\u0001\u0010\u0091\u0001\u001a\u00030\u0090\u00012\f\b\u0003\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u000b\b\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001J½\u0001\u0010\u009c\u0001\u001a\u00030\u0094\u00012\b\b\u0001\u0010 \u001a\u00020\u00022\u000b\b\u0001\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00022\t\b\u0001\u0010\u008f\u0001\u001a\u00020\u00022\n\b\u0001\u0010d\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010?\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0099\u0001\u001a\u00030\u0090\u00012\b\b\u0001\u0010g\u001a\u00020\u00022\n\b\u0001\u0010j\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010k\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u000f2\u000b\b\u0003\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\b\u009c\u0001\u0010\u009d\u0001JC\u0010¢\u0001\u001a\u00020\u00072\t\b\u0001\u0010\u009e\u0001\u001a\u00020\u00022\t\b\u0001\u0010\u009f\u0001\u001a\u00020\u00042\u000b\b\u0001\u0010 \u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0001\u0010¡\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\b¢\u0001\u0010£\u0001J]\u0010¥\u0001\u001a\u00020\u00072\t\b\u0001\u0010\u009e\u0001\u001a\u00020\u00022\t\b\u0001\u0010\u009f\u0001\u001a\u00020\u00042\u000b\b\u0001\u0010 \u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010¡\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010¤\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\b¥\u0001\u0010¦\u0001JL\u0010¨\u0001\u001a\u00030§\u00012\b\b\u0001\u0010 \u001a\u00020\u00022\u000b\b\u0001\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010d\u001a\u00020\u00022\b\b\u0001\u0010g\u001a\u00020\u00022\u000b\b\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\b¨\u0001\u0010©\u0001J(\u0010¬\u0001\u001a\u00030«\u00012\b\b\u0001\u0010$\u001a\u00020\u00022\t\b\u0001\u0010ª\u0001\u001a\u00020\u0002H§@¢\u0006\u0005\b¬\u0001\u0010&J3\u0010°\u0001\u001a\u00030¯\u00012\b\b\u0001\u0010\u0003\u001a\u00020\u00022\t\b\u0001\u0010\u00ad\u0001\u001a\u00020\u00022\t\b\u0001\u0010®\u0001\u001a\u00020\u0002H§@¢\u0006\u0005\b°\u0001\u00100J&\u0010±\u0001\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u00022\b\b\u0001\u0010*\u001a\u00020\u0002H§@¢\u0006\u0005\b±\u0001\u0010&J+\u0010µ\u0001\u001a\u00030´\u00012\t\b\u0001\u0010²\u0001\u001a\u00020\u00022\u000b\b\u0001\u0010³\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0005\bµ\u0001\u0010&J8\u0010¹\u0001\u001a\u00030«\u00012\t\b\u0001\u0010¶\u0001\u001a\u00020\u00022\u000b\b\u0003\u0010·\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010¸\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0005\b¹\u0001\u00100Jz\u0010¿\u0001\u001a\u00030¾\u00012\t\b\u0001\u0010º\u0001\u001a\u00020\u00022\t\b\u0001\u0010»\u0001\u001a\u00020\u00022\t\b\u0001\u0010¼\u0001\u001a\u00020\u00022\b\b\u0001\u0010 \u001a\u00020\u00022\t\b\u0001\u0010½\u0001\u001a\u00020\u00022\u000b\b\u0001\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010g\u001a\u00020\u00022\n\b\u0001\u0010d\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\b¿\u0001\u0010À\u0001Jz\u0010Á\u0001\u001a\u00030¾\u00012\t\b\u0001\u0010º\u0001\u001a\u00020\u00022\t\b\u0001\u0010»\u0001\u001a\u00020\u00022\t\b\u0001\u0010¼\u0001\u001a\u00020\u00022\b\b\u0001\u0010 \u001a\u00020\u00022\t\b\u0001\u0010½\u0001\u001a\u00020\u00022\u000b\b\u0001\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010g\u001a\u00020\u00022\n\b\u0001\u0010d\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\bÁ\u0001\u0010À\u0001JP\u0010Ä\u0001\u001a\u00030¾\u00012\t\b\u0001\u0010Â\u0001\u001a\u00020\u00022\b\b\u0001\u0010g\u001a\u00020\u00022\u000b\b\u0001\u0010Ã\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\bÄ\u0001\u0010©\u0001J\u001c\u0010Å\u0001\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0005\bÅ\u0001\u0010\"J\u001c\u0010Æ\u0001\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0005\bÆ\u0001\u0010\"J\u001c\u0010Ç\u0001\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0005\bÇ\u0001\u0010\"J\u001c\u0010È\u0001\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0005\bÈ\u0001\u0010\"J8\u0010Ë\u0001\u001a\u00020\u00072\n\b\u0001\u0010P\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010É\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010Ê\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0005\bË\u0001\u00100J\u001c\u0010Ì\u0001\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0005\bÌ\u0001\u0010\"JC\u0010Î\u0001\u001a\u00020\u00072\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010#\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010F\u001a\u00020\u00042\f\b\u0001\u0010Í\u0001\u001a\u0005\u0018\u00010\u0090\u0001H§@¢\u0006\u0006\bÎ\u0001\u0010Ï\u0001JA\u0010Ð\u0001\u001a\u00020\u00072\b\b\u0001\u0010$\u001a\u00020\u00022\b\b\u0001\u0010F\u001a\u00020\u00042\f\b\u0001\u0010Í\u0001\u001a\u0005\u0018\u00010\u0090\u00012\n\b\u0001\u0010G\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\bÐ\u0001\u0010Ñ\u0001J3\u0010Ò\u0001\u001a\u00020\u00072\b\b\u0001\u0010#\u001a\u00020\u00022\b\b\u0001\u0010F\u001a\u00020\u00042\n\b\u0001\u0010Í\u0001\u001a\u00030\u0090\u0001H§@¢\u0006\u0006\bÒ\u0001\u0010Ó\u0001J3\u0010Ô\u0001\u001a\u00020\u00072\b\b\u0001\u0010#\u001a\u00020\u00022\b\b\u0001\u0010F\u001a\u00020\u00042\n\b\u0001\u0010Í\u0001\u001a\u00030\u0090\u0001H§@¢\u0006\u0006\bÔ\u0001\u0010Ó\u0001J*\u0010Ö\u0001\u001a\u00030¾\u00012\n\b\u0001\u0010Õ\u0001\u001a\u00030\u0090\u00012\b\b\u0001\u0010g\u001a\u00020\u0002H§@¢\u0006\u0006\bÖ\u0001\u0010×\u0001JP\u0010Û\u0001\u001a\u00030Ú\u00012\u000b\b\u0001\u0010Ø\u0001\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010#\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u00022\u000b\b\u0001\u0010Ù\u0001\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010g\u001a\u00020\u0002H§@¢\u0006\u0006\bÛ\u0001\u0010Ü\u0001J\u0012\u0010Ý\u0001\u001a\u00020\u0007H§@¢\u0006\u0005\bÝ\u0001\u0010\u001fJ<\u0010à\u0001\u001a\u00030ß\u00012\t\b\u0001\u0010Þ\u0001\u001a\u00020\u00022\b\b\u0001\u00105\u001a\u00020\u00022\b\b\u0001\u00106\u001a\u00020\u00022\b\b\u0001\u00107\u001a\u00020\u0002H§@¢\u0006\u0005\bà\u0001\u00109JA\u0010ä\u0001\u001a\u00030ã\u00012\t\b\u0001\u0010Þ\u0001\u001a\u00020\u00022\t\b\u0001\u0010á\u0001\u001a\u00020\u00022\b\b\u0001\u0010g\u001a\u00020\u00022\u000b\b\u0001\u0010â\u0001\u001a\u0004\u0018\u00010\u000fH§@¢\u0006\u0006\bä\u0001\u0010å\u0001J\u001e\u0010è\u0001\u001a\u00030ç\u00012\t\b\u0001\u0010æ\u0001\u001a\u00020\u0002H§@¢\u0006\u0005\bè\u0001\u0010\"Jp\u0010ê\u0001\u001a\u00030é\u00012\t\b\u0001\u0010Þ\u0001\u001a\u00020\u00022\b\b\u0001\u0010 \u001a\u00020\u00022\b\b\u0001\u0010?\u001a\u00020\u00022\b\b\u0001\u0010g\u001a\u00020\u00022\u000b\b\u0003\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010j\u001a\u0005\u0018\u00010\u0090\u00012\n\b\u0003\u0010k\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\bê\u0001\u0010ë\u0001Jq\u0010í\u0001\u001a\u00030é\u00012\t\b\u0001\u0010Þ\u0001\u001a\u00020\u00022\t\b\u0001\u0010ì\u0001\u001a\u00020\u00022\b\b\u0001\u0010?\u001a\u00020\u00022\b\b\u0001\u0010g\u001a\u00020\u00022\u000b\b\u0003\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010j\u001a\u0005\u0018\u00010\u0090\u00012\n\b\u0003\u0010k\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\bí\u0001\u0010ë\u0001J\u001c\u0010î\u0001\u001a\u00020\u00072\b\b\u0001\u0010F\u001a\u00020\u0004H§@¢\u0006\u0005\bî\u0001\u0010KJ<\u0010ñ\u0001\u001a\u00020y2\t\b\u0001\u0010ï\u0001\u001a\u00020\u00022\b\b\u0001\u0010 \u001a\u00020\u00022\t\b\u0001\u0010ð\u0001\u001a\u00020\u00022\b\b\u0001\u0010g\u001a\u00020\u0002H§@¢\u0006\u0005\bñ\u0001\u00109J(\u0010ô\u0001\u001a\u00030ó\u00012\t\b\u0001\u0010ò\u0001\u001a\u00020\u00022\b\b\u0001\u0010$\u001a\u00020\u0002H§@¢\u0006\u0005\bô\u0001\u0010&JC\u0010ù\u0001\u001a\u00020\u00072\t\b\u0001\u0010õ\u0001\u001a\u00020\u00022\t\b\u0001\u0010ö\u0001\u001a\u00020\u00042\u000b\b\u0003\u0010÷\u0001\u001a\u0004\u0018\u00010\u00022\u000b\b\u0003\u0010ø\u0001\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0006\bù\u0001\u0010ú\u0001¨\u0006û\u0001À\u0006\u0003"}, d2 = {"Lorg/wikipedia/dataclient/Service;", "", "", "searchTerm", "", "maxResults", "gpsOffset", "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;", "prefixSearch", "(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lretrofit2/Response;", "prefixSearchResponse", "gsrLimit", "gsrOffset", "fullTextSearch", "", "isSemantic", "fullTextSearchResponse", "(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "prefix", "prefixSearchUsers", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fullTextSearchCommons", "fullTextSearchTemplates", "piLimit", "sMaxAge", "maxAge", "searchMoreLike", "(Ljava/lang/String;IILjava/lang/Integer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lorg/wikipedia/captcha/Captcha;", "getNewCaptcha", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "title", "getLangLinks", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pageIds", "titles", "getInfoByPageIdsOrTitles", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getInfoWithExtractsByPageTitles", "getInfoByTitlesWithGlobalUserInfo", "getPageIds", "lang", "getImageInfo", "getVideoInfo", "metadataLang", "entityLang", "getImageInfoWithEntityTerms", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProtection", "getProtectionWithUserInfo", "Lorg/wikipedia/dataclient/mwapi/SiteMatrix;", "getSiteMatrix", "saveHeader", "langHeader", "titleHeader", "getPageNamespaceWithSiteInfo", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getSiteInfo", "getSiteInfoWithMagicWords", "pageTitle", "Lorg/wikipedia/dataclient/mwapi/MwParseResponse;", "parsePage", "text", "parseText", "mainPageTitle", "parseTextForMainPage", "getCategories", "getCategoriesProps", "type", "count", "continueStr", "getCategoryMembers", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRandomPages", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRandomPagesWithExtract", "getRandomImages", "startTimeStamp", "direction", "latestRevisions", "filters", "getRecentEdits", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lorg/wikimedia/testkitchen/config/StreamConfigCollection;", "getStreamConfigs", "messages", "args", "getMessages", "url", "Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse;", "shortenUrl", "coordinates", "radius", "ggsLimit", "coLimit", "getGeoSearch", "(Ljava/lang/String;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getGeoSearchWithExtracts", "getToken", "user", "pass", "retype", "token", "returnurl", "email", "captchaId", "captchaWord", "Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;", "postCreateAccount", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLoginToken", "twoFactorCode", "emailAuthToken", "returnUrl", "loginToken", "loginContinue", "newModule", "Lorg/wikipedia/login/LoginResponse;", "postLogIn", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lorg/wikipedia/dataclient/mwapi/MwPostResponse;", "postLogout", "getAuthManagerInfo", "getAuthManagerForLogin", "getUserInfo", "getLocalAndGlobalUserInfo", "userName", "userInfo", "userInfoWithMessages", "globalUserInfo", "userNames", "getUserList", "filter", "getAllNotifications", "readList", "unreadList", "markRead", "lastUnreadNotification", "unreadNotificationWikis", "section", "getWikiTextForSectionWithInfo", "(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "summary", "", "undoRevId", "undoRevAfter", "tags", "Lorg/wikipedia/edit/Edit;", "postUndoEdit", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "newSectionTitle", "appendText", "baseRevId", "minor", "watchlist", "postEditSubmit", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "username", "maxCount", "ns", "uccontinue", "getUserContributions", "(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ucdir", "getUserContrib", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lorg/wikipedia/dataclient/rollback/RollbackPostResponse;", "postRollback", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sites", "Lorg/wikipedia/dataclient/wikidata/Entities;", "getEntitiesByTitleSuspend", "searchLang", "resultLang", "Lorg/wikipedia/dataclient/wikidata/Search;", "searchEntities", "getWikidataEntityTerms", "entity", "property", "Lorg/wikipedia/dataclient/wikidata/Claims;", "getClaims", "idList", "languages", "siteFilter", "getWikidataLabelsAndDescriptions", "language", "useLang", "site", "newDescription", "Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;", "postDescriptionEdit", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "postLabelEdit", "id", "data", "postEditEntity", "getWatchedStatus", "getWatchedStatusWithUserOptions", "getWatchedStatusWithRights", "getWatchedStatusWithCategories", "showCriteria", "typeOfChanges", "getWatchlist", "getLastModified", "revisionStartId", "getRevisionDetailsAscending", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRevisionDetailsDescending", "(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRevisionDetailsWithInfo", "(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRevisionDetailsWithUserInfo", "revisionId", "postThanksToRevision", "(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unwatch", "expiry", "Lorg/wikipedia/dataclient/watch/WatchPostResponse;", "watch", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getWatchToken", "page", "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse;", "getTalkPageTopics", "topicName", "subscribe", "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscribeResponse;", "subscribeTalkPageTopic", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "topicNames", "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscriptionList;", "getTalkPageTopicSubscriptions", "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsEditResponse;", "postTalkPageTopic", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "commentId", "postTalkPageTopicReply", "getPagesWithImageRecommendations", "taskType", "fileName", "invalidateImageRecommendation", "langCode", "Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse;", "getTemplateData", "articleTopics", "limit", "profile", "sort", "getArticlesByTopic", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Service {
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&converttitles=&prop=description|pageimages|pageprops|coordinates|info&ppprop=mainpage|disambiguation&generator=search&gsrnamespace=0&gsrwhat=text&inprop=varianttitles|displaytitle&gsrinfo=&gsrprop=redirecttitle&piprop=thumbnail&pilicense=any&pithumbsize=330")
    Object fullTextSearch(@Query("gsrsearch") String str, @Query("gsrlimit") int i, @Query("gsroffset") Integer num, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=search&prop=imageinfo&iiprop=extmetadata|url&gsrnamespace=6&iiurlwidth=330")
    Object fullTextSearchCommons(@Query("gsrsearch") String str, @Query("gsrlimit") int i, @Query("gsroffset") Integer num, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&converttitles=&prop=description|pageimages|pageprops|coordinates|info&ppprop=mainpage|disambiguation&generator=search&gsrnamespace=0&gsrwhat=text&inprop=varianttitles|displaytitle&gsrinfo=&gsrprop=redirecttitle|snippet|sectiontitle&piprop=thumbnail&pilicense=any&pithumbsize=330")
    Object fullTextSearchResponse(@Query("gsrsearch") String str, @Query("gsrlimit") int i, @Query("gsroffset") Integer num, @Query("cirrusSemanticSearch") Boolean bool, Continuation<? super Response<MwQueryResponse>> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&converttitles=&prop=description|info&generator=search&gsrnamespace=0&gsrwhat=text&inprop=varianttitles|displaytitle&gsrinfo=&gsrprop=redirecttitle")
    Object fullTextSearchTemplates(@Query("gsrsearch") String str, @Query("gsrlimit") int i, @Query("gsroffset") Integer num, Continuation<? super MwQueryResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=notifications&notformat=model&notlimit=max&notwikis=*")
    Object getAllNotifications(@Query("notfilter") String str, @Query("notcontinue") String str2, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=search&redirects=&converttitles=&prop=description|pageimages|pageprops|info|extracts&exchars=500&exintro=1&explaintext=1&piprop=thumbnail&pilicense=any&gsrnamespace=0&inprop=varianttitles|displaytitle&pithumbsize=330")
    Object getArticlesByTopic(@Query("gsrsearch") String str, @Query("gsrlimit") int i, @Query("gsrqiprofile") String str2, @Query("gsrsort") String str3, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=authmanagerinfo&amirequestsfor=login")
    Object getAuthManagerForLogin(Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=authmanagerinfo|tokens&amirequestsfor=create&type=createaccount")
    Object getAuthManagerInfo(Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info&generator=categories&inprop=varianttitles|displaytitle&gclshow=!hidden&gcllimit=500")
    Object getCategories(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=categories&clshow=!hidden&cllimit=100")
    Object getCategoriesProps(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=description|pageimages|info&pilicense=any&generator=categorymembers&inprop=varianttitles|displaytitle&gcmprop=ids|title")
    Object getCategoryMembers(@Query("gcmtitle") String str, @Query("gcmtype") String str2, @Query("gcmlimit") int i, @Query("gcmcontinue") String str3, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbgetclaims")
    Object getClaims(@Query("entity") String str, @Query("property") String str2, Continuation<? super Claims> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbgetentities")
    Object getEntitiesByTitleSuspend(@Query("titles") String str, @Query("sites") String str2, Continuation<? super Entities> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=geosearch&prop=coordinates|description|pageimages|info&inprop=varianttitles|displaytitle&pilicense=any")
    Object getGeoSearch(@Query(encoded = true, value = "ggscoord") String str, @Query("ggsradius") int i, @Query("ggslimit") int i2, @Query("colimit") int i3, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=geosearch&prop=coordinates|description|pageimages|info|extracts&exchars=500&exintro=1&explaintext=1&inprop=varianttitles|displaytitle&pilicense=any")
    Object getGeoSearchWithExtracts(@Query(encoded = true, value = "ggscoord") String str, @Query("ggsradius") int i, @Query("ggslimit") int i2, @Query("colimit") int i3, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=imageinfo&iiprop=timestamp|user|url|mime|metadata|extmetadata&iiurlwidth=330")
    Object getImageInfo(@Query("titles") String str, @Query("iiextmetadatalanguage") String str2, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=imageinfo|entityterms&iiprop=timestamp|user|url|mime|extmetadata&iiurlwidth=330")
    Object getImageInfoWithEntityTerms(@Query("titles") String str, @Query("iiextmetadatalanguage") String str2, @Query("wbetlanguage") String str3, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|description|pageimages&pilicense=any&inprop=varianttitles|displaytitle&redirects=1&pithumbsize=330")
    Object getInfoByPageIdsOrTitles(@Query("pageids") String str, @Query("titles") String str2, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=globaluserinfo&guiprop=editcount&prop=info|description|pageimages&pilicense=any&inprop=varianttitles|displaytitle&redirects=1&assert=user&pithumbsize=330")
    Object getInfoByTitlesWithGlobalUserInfo(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|description|pageimages|extracts&exchars=500&exintro=1&explaintext=1&pilicense=any&inprop=varianttitles|displaytitle&redirects=1&pithumbsize=330")
    Object getInfoWithExtractsByPageTitles(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=langlinks&lllimit=500&redirects=&converttitles=")
    Object getLangLinks(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=revisions&rvslots=main&rvprop=timestamp|user|ids|comment|tags")
    Object getLastModified(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=userinfo|globaluserinfo&guiprop=editcount&uiprop=groups|blockinfo|editcount|latestcontrib|hasmsg|options&assert=user")
    Object getLocalAndGlobalUserInfo(Continuation<? super MwQueryResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=tokens&type=login")
    Object getLoginToken(Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=allmessages&amenableparser=1")
    Object getMessages(@Query("ammessages") String str, @Query("amargs") String str2, @Query("amlang") String str3, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=fancycaptchareload")
    Object getNewCaptcha(Continuation<? super Captcha> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=siteinfo&siprop=general|autocreatetempuser")
    Object getPageIds(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=siteinfo&siprop=namespaces")
    Object getPageNamespaceWithSiteInfo(@Query("titles") String str, @Header("X-Offline-Save") String str2, @Header("X-Offline-Lang") String str3, @Header("X-Offline-Title") String str4, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=search&gsrsearch=hasrecommendation%3Aimage&gsrnamespace=0&gsrsort=random&prop=growthimagesuggestiondata|revisions|pageimages&pilicense=any&rvprop=ids|timestamp|flags|comment|user|content&rvslots=main&rvsection=0")
    Object getPagesWithImageRecommendations(@Query("gsrlimit") int i, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info&inprop=protection")
    Object getProtection(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=userinfo&prop=info&inprop=protection&uiprop=groups")
    Object getProtectionWithUserInfo(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=random&redirects=1&grnnamespace=6&prop=info|description|imageinfo|revisions|globalusage&inprop=protection&gunamespace=0&rvprop=ids|timestamp|flags|comment|user|content&rvslots=mediainfo&iiprop=timestamp|user|url|mime|extmetadata&iilocalonly=1&iiurlwidth=330")
    Object getRandomImages(@Query("grnlimit") int i, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=random&redirects=1&grnnamespace=0&prop=pageprops|description|info&inprop=protection")
    Object getRandomPages(@Query("grnlimit") int i, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=random&grnfilterredir=nonredirects&grnnamespace=0&prop=pageprops|pageimages|description|info|extracts&exchars=500&exintro=1&explaintext=1&piprop=thumbnail&pilicense=any&inprop=varianttitles|displaytitle&pithumbsize=330")
    Object getRandomPagesWithExtract(@Query("grnlimit") int i, Continuation<? super MwQueryResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=recentchanges&rcprop=title|timestamp|ids|oresscores|sizes|tags|user|parsedcomment|comment|flags&rcnamespace=0&rctype=edit|new")
    Object getRecentEdits(@Query("rclimit") int i, @Query("rcstart") String str, @Query("rcdir") String str2, @Query("rctoponly") String str3, @Query("rcshow") String str4, @Query("rccontinue") String str5, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|revisions&rvslots=main&rvprop=ids|timestamp|size|flags|comment|parsedcomment|user|oresscores&rvdir=newer")
    Object getRevisionDetailsAscending(@Query("titles") String str, @Query("pageids") String str2, @Query("rvlimit") int i, @Query("rvstartid") Long l, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|revisions&rvslots=main&rvprop=ids|timestamp|size|flags|comment|parsedcomment|user|oresscores&rvdir=older")
    Object getRevisionDetailsDescending(@Query("titles") String str, @Query("rvlimit") int i, @Query("rvstartid") Long l, @Query("rvcontinue") String str2, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|revisions&rvslots=main&rvprop=ids|timestamp|size|flags|comment|parsedcomment|user|oresscores&rvdir=older")
    Object getRevisionDetailsWithInfo(@Query("pageids") String str, @Query("rvlimit") int i, @Query("rvstartid") long j, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|revisions&rvslots=main&rvprop=ids|timestamp|size|flags|comment|parsedcomment|user|oresscores&rvdir=older&inprop=watched&meta=userinfo&uiprop=rights")
    Object getRevisionDetailsWithUserInfo(@Query("pageids") String str, @Query("rvlimit") int i, @Query("rvstartid") long j, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=siteinfo&maxage=86400&smaxage=86400")
    Object getSiteInfo(Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=siteinfo&siprop=general|magicwords")
    Object getSiteInfoWithMagicWords(Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=sitematrix&smtype=language&smlangprop=code|name|localname&maxage=86400&smaxage=86400")
    Object getSiteMatrix(Continuation<? super SiteMatrix> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=streamconfigs&format=json")
    Object getStreamConfigs(Continuation<? super StreamConfigCollection> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=discussiontoolsgetsubscriptions")
    Object getTalkPageTopicSubscriptions(@Query("commentname") String str, Continuation<? super DiscussionToolsSubscriptionList> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=discussiontoolspageinfo&prop=threaditemshtml")
    Object getTalkPageTopics(@Query("page") String str, @Header("X-Offline-Save") String str2, @Header("X-Offline-Lang") String str3, @Header("X-Offline-Title") String str4, Continuation<? super DiscussionToolsInfoResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=templatedata&includeMissingTitles=&converttitles=")
    Object getTemplateData(@Query("lang") String str, @Query("titles") String str2, Continuation<? super TemplateDataResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=tokens")
    Object getToken(@Query("type") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=usercontribs&ucprop=ids|title|timestamp|comment|size|flags|sizediff|tags")
    Object getUserContrib(@Query("ucuser") String str, @Query("uclimit") int i, @Query("ucnamespace") String str2, @Query("ucshow") String str3, @Query("uccontinue") String str4, @Query("ucdir") String str5, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=usercontribs&ucprop=ids|title|timestamp|comment|size|flags|sizediff|tags&meta=userinfo&uiprop=groups|blockinfo|editcount|latestcontrib|rights|registrationdate")
    Object getUserContributions(@Query("ucuser") String str, @Query("uclimit") int i, @Query("ucnamespace") Integer num, @Query("uccontinue") String str2, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=userinfo&uiprop=groups|blockinfo|editcount|latestcontrib|hasmsg|options&assert=user")
    Object getUserInfo(Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=users&usprop=groups|cancreate")
    Object getUserList(@Query("ususers") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=videoinfo&viprop=timestamp|user|url|mime|metadata|extmetadata|derivatives&viurlwidth=330")
    Object getVideoInfo(@Query("titles") String str, @Query("viextmetadatalanguage") String str2, Continuation<? super MwQueryResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=tokens&type=watch")
    Object getWatchToken(Continuation<? super MwQueryResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info&converttitles=&redirects=&inprop=watched")
    Object getWatchedStatus(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|categories&converttitles=&redirects=&inprop=watched&clshow=!hidden&cllimit=100")
    Object getWatchedStatusWithCategories(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info&converttitles=&redirects=&inprop=watched&meta=userinfo&uiprop=rights")
    Object getWatchedStatusWithRights(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info&converttitles=&redirects=&inprop=watched&meta=userinfo&uiprop=options")
    Object getWatchedStatusWithUserOptions(@Query("titles") String str, Continuation<? super MwQueryResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=watchlist&wllimit=500&wlprop=ids|title|flags|comment|parsedcomment|timestamp|sizes|user|loginfo&assert=user")
    Object getWatchlist(@Query("wlallrev") String str, @Query("wlshow") String str2, @Query("wltype") String str3, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=revisions|info&meta=siteinfo&siprop=general|autocreatetempuser&rvslots=main&rvprop=content|timestamp|ids&rvlimit=1&converttitles=&intestactions=edit&intestactionsdetail=full&inprop=editintro")
    Object getWikiTextForSectionWithInfo(@Query("titles") String str, @Query("rvsection") Integer num, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=entityterms")
    Object getWikidataEntityTerms(@Query("titles") String str, @Query("wbetlanguage") String str2, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbgetentities&props=descriptions|labels|sitelinks")
    Object getWikidataLabelsAndDescriptions(@Query("ids") String str, @Query("languages") String str2, @Query("sitefilter") String str3, Continuation<? super Entities> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=globaluserinfo&guiprop=editcount|groups|rights")
    Object globalUserInfo(@Query("guiuser") String str, Continuation<? super MwQueryResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=growthinvalidateimagerecommendation")
    Object invalidateImageRecommendation(@Field("tasktype") String str, @Field("title") String str2, @Field("filename") String str3, @Field("token") String str4, Continuation<? super MwPostResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=notifications&notwikis=*&notprop=list&notfilter=!read&notlimit=1")
    Object lastUnreadNotification(Continuation<? super MwQueryResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=echomarkread")
    Object markRead(@Field("token") String str, @Field("list") String str2, @Field("unreadlist") String str3, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=parse&prop=text&mobileformat=1")
    Object parsePage(@Query("page") String str, Continuation<? super MwParseResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=parse&prop=text&mobileformat=1&contentmodel=wikitext&disablelimitreport=1")
    Object parseText(@Query("text") String str, Continuation<? super MwParseResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=parse&prop=text&mobileformat=1&mainpage=1")
    Object parseTextForMainPage(@Query("page") String str, Continuation<? super MwParseResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=createaccount&createmessageformat=html")
    Object postCreateAccount(@Field("username") String str, @Field("password") String str2, @Field("retype") String str3, @Field("createtoken") String str4, @Field("createreturnurl") String str5, @Field("email") String str6, @Field("captchaId") String str7, @Field("captchaWord") String str8, Continuation<? super CreateAccountResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbsetdescription&errorlang=uselang")
    Object postDescriptionEdit(@Field("language") String str, @Field("uselang") String str2, @Field("site") String str3, @Field("title") String str4, @Field("value") String str5, @Field("summary") String str6, @Field("token") String str7, @Field("assert") String str8, @Field("matags") String str9, Continuation<? super EntityPostResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbeditentity&errorlang=uselang")
    Object postEditEntity(@Field("id") String str, @Field("token") String str2, @Field("data") String str3, @Field("summary") String str4, @Field("matags") String str5, Continuation<? super EntityPostResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=edit")
    Object postEditSubmit(@Field("title") String str, @Field("section") String str2, @Field("sectiontitle") String str3, @Field("summary") String str4, @Field("assert") String str5, @Field("text") String str6, @Field("appendtext") String str7, @Field("baserevid") long j, @Field("token") String str8, @Field("captchaid") String str9, @Field("captchaword") String str10, @Field("minor") Boolean bool, @Field("watchlist") String str11, @Field("matags") String str12, Continuation<? super Edit> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbsetlabel&errorlang=uselang")
    Object postLabelEdit(@Field("language") String str, @Field("uselang") String str2, @Field("site") String str3, @Field("title") String str4, @Field("value") String str5, @Field("summary") String str6, @Field("token") String str7, @Field("assert") String str8, @Field("matags") String str9, Continuation<? super EntityPostResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=clientlogin&rememberMe=")
    Object postLogIn(@Field("username") String str, @Field("password") String str2, @Field("retype") String str3, @Field("OATHToken") String str4, @Field("token") String str5, @Field("captchaId") String str6, @Field("captchaWord") String str7, @Field("loginreturnurl") String str8, @Field("logintoken") String str9, @Field("logincontinue") Boolean bool, @Field("newModule") String str10, Continuation<? super LoginResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=logout")
    Object postLogout(@Field("token") String str, Continuation<? super MwPostResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=rollback")
    Object postRollback(@Field("title") String str, @Field("summary") String str2, @Field("user") String str3, @Field("token") String str4, @Field("matags") String str5, Continuation<? super RollbackPostResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=discussiontoolsedit&paction=addtopic")
    Object postTalkPageTopic(@Field("page") String str, @Field("sectiontitle") String str2, @Field("wikitext") String str3, @Field("token") String str4, @Field("summary") String str5, @Field("captchaid") Long l, @Field("captchaword") String str6, @Field("matags") String str7, Continuation<? super DiscussionToolsEditResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=discussiontoolsedit&paction=addcomment")
    Object postTalkPageTopicReply(@Field("page") String str, @Field("commentid") String str2, @Field("wikitext") String str3, @Field("token") String str4, @Field("summary") String str5, @Field("captchaid") Long l, @Field("captchaword") String str6, @Field("matags") String str7, Continuation<? super DiscussionToolsEditResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=thank")
    Object postThanksToRevision(@Field("rev") long j, @Field("token") String str, Continuation<? super EntityPostResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=edit")
    Object postUndoEdit(@Field("title") String str, @Field("summary") String str2, @Field("assert") String str3, @Field("token") String str4, @Field("undo") long j, @Field("undoafter") Long l, @Field("matags") String str5, Continuation<? super Edit> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&redirects=&converttitles=&prop=description|pageimages|coordinates|info&piprop=thumbnail&pilicense=any&generator=prefixsearch&gpsnamespace=0&inprop=varianttitles|displaytitle&pithumbsize=330")
    Object prefixSearch(@Query("gpssearch") String str, @Query("gpslimit") int i, @Query("gpsoffset") Integer num, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&redirects=&converttitles=&prop=description|pageimages|coordinates|info&piprop=thumbnail&pilicense=any&generator=prefixsearch&gpsnamespace=0&inprop=varianttitles|displaytitle&pithumbsize=330")
    Object prefixSearchResponse(@Query("gpssearch") String str, @Query("gpslimit") int i, @Query("gpsoffset") Integer num, Continuation<? super Response<MwQueryResponse>> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=allusers&auwitheditsonly=1")
    Object prefixSearchUsers(@Query("auprefix") String str, @Query("aulimit") int i, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbsearchentities&type=item&limit=20")
    Object searchEntities(@Query("search") String str, @Query("language") String str2, @Query("uselang") String str3, Continuation<? super Search> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=search&gsrnamespace=0&gsrqiprofile=classic_noboostlinks&origin=*&piprop=thumbnail&pilicense=any&prop=pageimages|description|info|pageprops|extracts&exchars=500&exintro=1&explaintext=1&inprop=varianttitles&pithumbsize=330")
    Object searchMoreLike(@Query("gsrsearch") String str, @Query("gsrlimit") int i, @Query("pilimit") int i2, @Query("gsroffset") Integer num, @Query("smaxage") int i3, @Query("maxage") int i4, Continuation<? super MwQueryResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=shortenurl")
    Object shortenUrl(@Field("url") String str, Continuation<? super ShortenUrlResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=discussiontoolssubscribe")
    Object subscribeTalkPageTopic(@Field("page") String str, @Field("commentname") String str2, @Field("token") String str3, @Field("subscribe") Boolean bool, Continuation<? super DiscussionToolsSubscribeResponse> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=unreadnotificationpages&unplimit=max&unpwikis=*")
    Object unreadNotificationWikis(Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=users&usprop=editcount|groups|registration|rights")
    Object userInfo(@Query("ususers") String str, Continuation<? super MwQueryResponse> continuation);

    @GET("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=users&usprop=editcount|groups|registration|rights&meta=allmessages")
    Object userInfoWithMessages(@Query("ususers") String str, @Query("ammessages") String str2, Continuation<? super MwQueryResponse> continuation);

    @FormUrlEncoded
    @POST("w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=watch&converttitles=&redirects=")
    Object watch(@Field("unwatch") Integer num, @Field("pageids") String str, @Field("titles") String str2, @Field("expiry") String str3, @Field("token") String str4, Continuation<? super WatchPostResponse> continuation);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.dataclient.Service$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$onOpenInPlaces(HistoryEntry historyEntry, Location location) {
            historyEntry.getClass();
            location.getClass();
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.io.Serializable $private$addPageToList(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r4, org.wikipedia.readinglist.database.ReadingList r5, org.wikipedia.page.PageTitle r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
            /*
                boolean r0 = r7 instanceof org.wikipedia.readinglist.db.ReadingListPageDao$addPageToList$1
                if (r0 == 0) goto L13
                r0 = r7
                org.wikipedia.readinglist.db.ReadingListPageDao$addPageToList$1 r0 = (org.wikipedia.readinglist.db.ReadingListPageDao$addPageToList$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListPageDao$addPageToList$1 r0 = new org.wikipedia.readinglist.db.ReadingListPageDao$addPageToList$1
                r0.<init>(r4, r7)
            L18:
                java.lang.Object r7 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L30
                if (r2 != r3) goto L29
                org.wikipedia.readinglist.database.ReadingListPage r4 = r0.L$2
                kotlin.ResultKt.throwOnFailure(r7)
                return r4
            L29:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
                r4 = 0
                return r4
            L30:
                kotlin.ResultKt.throwOnFailure(r7)
                org.wikipedia.readinglist.database.ReadingListPage r7 = new org.wikipedia.readinglist.database.ReadingListPage
                r7.<init>(r6)
                r0.L$2 = r7
                r0.label = r3
                java.lang.Object r4 = $private$insertPageIntoDb(r4, r5, r7, r0)
                if (r4 != r1) goto L43
                return r1
            L43:
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.$private$addPageToList(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, org.wikipedia.readinglist.database.ReadingList, org.wikipedia.page.PageTitle, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.io.Serializable $private$createNewList(org.wikipedia.readinglist.db.ReadingListDao_Impl r4, java.lang.String r5, java.lang.String r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
            /*
                boolean r0 = r7 instanceof org.wikipedia.readinglist.db.ReadingListDao$createNewList$1
                if (r0 == 0) goto L13
                r0 = r7
                org.wikipedia.readinglist.db.ReadingListDao$createNewList$1 r0 = (org.wikipedia.readinglist.db.ReadingListDao$createNewList$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListDao$createNewList$1 r0 = new org.wikipedia.readinglist.db.ReadingListDao$createNewList$1
                r0.<init>(r4, r7)
            L18:
                java.lang.Object r7 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L32
                if (r2 != r3) goto L2b
                org.wikipedia.readinglist.database.ReadingList r4 = r0.L$3
                org.wikipedia.readinglist.database.ReadingList r5 = r0.L$2
                kotlin.ResultKt.throwOnFailure(r7)
                goto L52
            L2b:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
                r4 = 0
                return r4
            L32:
                kotlin.ResultKt.throwOnFailure(r7)
                org.wikipedia.readinglist.database.ReadingList r7 = new org.wikipedia.readinglist.database.ReadingList
                r7.<init>(r5, r6)
                r0.L$2 = r7
                r0.L$3 = r7
                r0.label = r3
                androidx.room.RoomDatabase r5 = r4.__db
                org.wikipedia.readinglist.db.ReadingListDao_Impl$$ExternalSyntheticLambda0 r6 = new org.wikipedia.readinglist.db.ReadingListDao_Impl$$ExternalSyntheticLambda0
                r2 = 0
                r6.<init>(r4, r7, r2)
                java.lang.Object r4 = kotlin.ExceptionsKt.performSuspending(r5, r2, r3, r6, r0)
                if (r4 != r1) goto L4f
                return r1
            L4f:
                r5 = r7
                r7 = r4
                r4 = r5
            L52:
                java.lang.Number r7 = (java.lang.Number) r7
                long r6 = r7.longValue()
                r4.id = r6
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.$private$createNewList(org.wikipedia.readinglist.db.ReadingListDao_Impl, java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object $private$insertPageIntoDb(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r6, org.wikipedia.readinglist.database.ReadingList r7, org.wikipedia.readinglist.database.ReadingListPage r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
            /*
                boolean r0 = r9 instanceof org.wikipedia.readinglist.db.ReadingListPageDao$insertPageIntoDb$1
                if (r0 == 0) goto L13
                r0 = r9
                org.wikipedia.readinglist.db.ReadingListPageDao$insertPageIntoDb$1 r0 = (org.wikipedia.readinglist.db.ReadingListPageDao$insertPageIntoDb$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListPageDao$insertPageIntoDb$1 r0 = new org.wikipedia.readinglist.db.ReadingListPageDao$insertPageIntoDb$1
                r0.<init>(r6, r9)
            L18:
                java.lang.Object r9 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L30
                if (r2 != r3) goto L29
                org.wikipedia.readinglist.database.ReadingListPage r8 = r0.L$2
                kotlin.ResultKt.throwOnFailure(r9)
                goto L4b
            L29:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
                r6 = 0
                return r6
            L30:
                kotlin.ResultKt.throwOnFailure(r9)
                long r4 = r7.id
                r8.listId = r4
                r0.L$2 = r8
                r0.label = r3
                androidx.room.RoomDatabase r7 = r6.__db
                org.wikipedia.readinglist.db.ReadingListPageDao_Impl$$ExternalSyntheticLambda1 r9 = new org.wikipedia.readinglist.db.ReadingListPageDao_Impl$$ExternalSyntheticLambda1
                r2 = 2
                r9.<init>(r6, r8, r2)
                r6 = 0
                java.lang.Object r9 = kotlin.ExceptionsKt.performSuspending(r7, r6, r3, r9, r0)
                if (r9 != r1) goto L4b
                return r1
            L4b:
                java.lang.Number r9 = (java.lang.Number) r9
                long r6 = r9.longValue()
                r8.id = r6
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.$private$insertPageIntoDb(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, org.wikipedia.readinglist.database.ReadingList, org.wikipedia.readinglist.database.ReadingListPage, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        public static HistoryEntry $private$toHistoryEntry(HistoryEntryWithImage historyEntryWithImage) {
            HistoryEntry historyEntry = new HistoryEntry(historyEntryWithImage.authority, historyEntryWithImage.lang, historyEntryWithImage.apiTitle, historyEntryWithImage.displayTitle, historyEntryWithImage.id, historyEntryWithImage.namespace, historyEntryWithImage.timestamp, historyEntryWithImage.source, 256);
            historyEntry.getTitle().thumbUrl = historyEntryWithImage.imageName;
            historyEntry.getTitle().description = historyEntryWithImage.description;
            return historyEntry;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0109  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0146  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x01b5 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0173  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00f7  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object addObject$suspendImpl(org.wikipedia.offline.db.OfflineObjectDao_Impl r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, kotlin.coroutines.jvm.internal.ContinuationImpl r28) {
            /*
                Method dump skipped, instructions count: 439
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.addObject$suspendImpl(org.wikipedia.offline.db.OfflineObjectDao_Impl, java.lang.String, java.lang.String, java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x00c1, code lost:
        
            if ($private$insertPageIntoDb(r2, r4, r9, r10) == r3) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0064, code lost:
        
            r4 = r8;
            r0 = r9;
            r8 = r10;
         */
        /* JADX WARN: Removed duplicated region for block: B:13:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object addPageToLists$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r17, java.util.List r18, org.wikipedia.readinglist.database.ReadingListPage r19, boolean r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
            /*
                Method dump skipped, instructions count: 222
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.addPageToLists$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, java.util.List, org.wikipedia.readinglist.database.ReadingListPage, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object addPagesToList$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r5, org.wikipedia.readinglist.database.ReadingList r6, java.util.List r7, boolean r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
            /*
                boolean r0 = r9 instanceof org.wikipedia.readinglist.db.ReadingListPageDao$addPagesToList$1
                if (r0 == 0) goto L13
                r0 = r9
                org.wikipedia.readinglist.db.ReadingListPageDao$addPagesToList$1 r0 = (org.wikipedia.readinglist.db.ReadingListPageDao$addPagesToList$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListPageDao$addPagesToList$1 r0 = new org.wikipedia.readinglist.db.ReadingListPageDao$addPagesToList$1
                r0.<init>(r5, r9)
            L18:
                java.lang.Object r9 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L3d
                if (r2 != r3) goto L36
                boolean r5 = r0.Z$0
                java.util.Iterator r6 = r0.L$3
                java.util.List r7 = r0.L$2
                org.wikipedia.readinglist.database.ReadingList r8 = r0.L$1
                org.wikipedia.readinglist.db.ReadingListPageDao_Impl r2 = r0.L$0
                kotlin.ResultKt.throwOnFailure(r9)
                r9 = r8
                r8 = r7
                r7 = r9
                r9 = r5
                r5 = r2
                goto L49
            L36:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
                r5 = 0
                return r5
            L3d:
                kotlin.ResultKt.throwOnFailure(r9)
                java.util.Iterator r9 = r7.iterator()
                r4 = r7
                r7 = r6
                r6 = r9
                r9 = r8
                r8 = r4
            L49:
                boolean r2 = r6.hasNext()
                if (r2 == 0) goto L68
                java.lang.Object r2 = r6.next()
                org.wikipedia.readinglist.database.ReadingListPage r2 = (org.wikipedia.readinglist.database.ReadingListPage) r2
                r0.L$0 = r5
                r0.L$1 = r7
                r0.L$2 = r8
                r0.L$3 = r6
                r0.Z$0 = r9
                r0.label = r3
                java.lang.Object r2 = $private$insertPageIntoDb(r5, r7, r2, r0)
                if (r2 != r1) goto L49
                return r1
            L68:
                kotlinx.coroutines.flow.SharedFlowImpl r5 = org.wikipedia.concurrency.FlowEventBus._events
                org.wikipedia.events.ArticleSavedOrDeletedEvent r5 = new org.wikipedia.events.ArticleSavedOrDeletedEvent
                r6 = 0
                org.wikipedia.readinglist.database.ReadingListPage[] r6 = new org.wikipedia.readinglist.database.ReadingListPage[r6]
                java.lang.Object[] r6 = r8.toArray(r6)
                org.wikipedia.readinglist.database.ReadingListPage[] r6 = (org.wikipedia.readinglist.database.ReadingListPage[]) r6
                int r7 = r6.length
                java.lang.Object[] r6 = java.util.Arrays.copyOf(r6, r7)
                org.wikipedia.readinglist.database.ReadingListPage[] r6 = (org.wikipedia.readinglist.database.ReadingListPage[]) r6
                r5.<init>(r3, r6)
                org.wikipedia.concurrency.FlowEventBus.post(r5)
                org.wikipedia.readinglist.ReadingListFragment.MultiSelectCallback.enqueue()
                if (r9 == 0) goto L8a
                okio.Path.Companion.manualSync$default()
            L8a:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.addPagesToList$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, org.wikipedia.readinglist.database.ReadingList, java.util.List, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0098, code lost:
        
            if (r11 == r1) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0085, code lost:
        
            if (r11 != null) goto L24;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /* JADX WARN: Type inference failed for: r10v10, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r9v15, types: [java.util.List] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0098 -> B:11:0x009b). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.io.Serializable addPagesToListIfNotExist$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r8, org.wikipedia.readinglist.database.ReadingList r9, java.util.List r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
            /*
                Method dump skipped, instructions count: 233
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.addPagesToListIfNotExist$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, org.wikipedia.readinglist.database.ReadingList, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        public static Object deleteList$default(ReadingListDao_Impl readingListDao_Impl, ReadingList readingList, SuspendLambda suspendLambda) {
            readingListDao_Impl.getClass();
            return deleteList$suspendImpl(readingListDao_Impl, readingList, true, suspendLambda);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object deleteList$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl r6, org.wikipedia.readinglist.database.ReadingList r7, boolean r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
            /*
                boolean r0 = r9 instanceof org.wikipedia.readinglist.db.ReadingListDao$deleteList$1
                if (r0 == 0) goto L13
                r0 = r9
                org.wikipedia.readinglist.db.ReadingListDao$deleteList$1 r0 = (org.wikipedia.readinglist.db.ReadingListDao$deleteList$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListDao$deleteList$1 r0 = new org.wikipedia.readinglist.db.ReadingListDao$deleteList$1
                r0.<init>(r6, r9)
            L18:
                java.lang.Object r9 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 0
                kotlin.Unit r4 = kotlin.Unit.INSTANCE
                r5 = 1
                if (r2 == 0) goto L34
                if (r2 != r5) goto L2e
                boolean r8 = r0.Z$0
                org.wikipedia.readinglist.database.ReadingList r7 = r0.L$1
                kotlin.ResultKt.throwOnFailure(r9)
                goto L5f
            L2e:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
                return r3
            L34:
                kotlin.ResultKt.throwOnFailure(r9)
                boolean r9 = r7.isDefault()
                if (r9 == 0) goto L45
                java.lang.String r6 = "Attempted to delete the default list."
                org.wikipedia.util.log.L$LEVEL_D$1 r7 = org.wikipedia.util.log.L.LEVEL_W
                r7.log(r6, r3)
                return r4
            L45:
                r0.L$1 = r7
                r0.Z$0 = r8
                r0.label = r5
                androidx.room.RoomDatabase r9 = r6.__db
                org.wikipedia.readinglist.db.ReadingListDao_Impl$$ExternalSyntheticLambda0 r2 = new org.wikipedia.readinglist.db.ReadingListDao_Impl$$ExternalSyntheticLambda0
                r3 = 2
                r2.<init>(r6, r7, r3)
                r6 = 0
                java.lang.Object r6 = kotlin.ExceptionsKt.performSuspending(r9, r6, r5, r2, r0)
                if (r6 != r1) goto L5b
                goto L5c
            L5b:
                r6 = r4
            L5c:
                if (r6 != r1) goto L5f
                return r1
            L5f:
                if (r8 == 0) goto L96
                r7.getClass()
                long r6 = r7.remoteId
                r8 = 0
                int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r8 > 0) goto L6d
                goto L96
            L6d:
                org.wikipedia.settings.Prefs r8 = org.wikipedia.settings.Prefs.INSTANCE
                java.lang.Long r6 = java.lang.Long.valueOf(r6)
                java.util.Set r6 = kotlin.uuid.UuidKt.setOf(r6)
                java.util.Set r7 = org.wikipedia.settings.Prefs.getReadingListsDeletedIds()
                java.lang.Iterable r7 = (java.lang.Iterable) r7
                java.util.Set r7 = kotlin.collections.CollectionsKt.toMutableSet(r7)
                r8 = r6
                java.util.Collection r8 = (java.util.Collection) r8
                r7.addAll(r8)
                int r8 = r7.size()
                r9 = 256(0x100, float:3.59E-43)
                if (r8 >= r9) goto L90
                r6 = r7
            L90:
                org.wikipedia.settings.Prefs.setReadingListsDeletedIds(r6)
                okio.Path.Companion.manualSync$default()
            L96:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.deleteList$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl, org.wikipedia.readinglist.database.ReadingList, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0162 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1, types: [java.util.Iterator, org.wikipedia.offline.db.OfflineObject] */
        /* JADX WARN: Type inference failed for: r10v17 */
        /* JADX WARN: Type inference failed for: r10v18 */
        /* JADX WARN: Type inference failed for: r10v19 */
        /* JADX WARN: Type inference failed for: r10v2 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00d1 -> B:14:0x015f). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0154 -> B:12:0x015a). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object deleteObjectsForPageId$suspendImpl(org.wikipedia.offline.db.OfflineObjectDao_Impl r18, java.util.ArrayList r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
            /*
                Method dump skipped, instructions count: 355
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.deleteObjectsForPageId$suspendImpl(org.wikipedia.offline.db.OfflineObjectDao_Impl, java.util.ArrayList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object filterHistoryItems$suspendImpl(org.wikipedia.history.db.HistoryEntryWithImageDao_Impl r8, java.lang.String r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
            /*
                boolean r0 = r10 instanceof org.wikipedia.history.db.HistoryEntryWithImageDao$filterHistoryItems$1
                if (r0 == 0) goto L13
                r0 = r10
                org.wikipedia.history.db.HistoryEntryWithImageDao$filterHistoryItems$1 r0 = (org.wikipedia.history.db.HistoryEntryWithImageDao$filterHistoryItems$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.history.db.HistoryEntryWithImageDao$filterHistoryItems$1 r0 = new org.wikipedia.history.db.HistoryEntryWithImageDao$filterHistoryItems$1
                r0.<init>(r8, r10)
            L18:
                java.lang.Object r10 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L31
                if (r2 != r4) goto L2a
                java.util.ArrayList r8 = r0.L$2
                kotlin.ResultKt.throwOnFailure(r10)
                goto L81
            L2a:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
                r8 = 0
                return r8
            L31:
                kotlin.ResultKt.throwOnFailure(r10)
                java.util.ArrayList r10 = new java.util.ArrayList
                r10.<init>()
                java.lang.String r9 = org.apache.commons.lang3.StringUtils.stripAccents(r9)
                r9.getClass()
                java.util.Locale r2 = java.util.Locale.getDefault()
                r2.getClass()
                java.lang.String r9 = r9.toLowerCase(r2)
                r9.getClass()
                java.lang.String r2 = "\\"
                java.lang.String r5 = "\\\\"
                java.lang.String r9 = kotlin.text.StringsKt__StringsJVMKt.replace$default(r9, r2, r5)
                java.lang.String r2 = "\\%"
                java.lang.String r5 = "%"
                java.lang.String r9 = kotlin.text.StringsKt__StringsJVMKt.replace$default(r9, r5, r2)
                java.lang.String r2 = "_"
                java.lang.String r6 = "\\_"
                java.lang.String r9 = kotlin.text.StringsKt__StringsJVMKt.replace$default(r9, r2, r6)
                java.lang.String r9 = androidx.compose.animation.core.Animation.CC.m(r5, r9, r5)
                r0.L$2 = r10
                r0.label = r4
                androidx.room.RoomDatabase r2 = r8.__db
                kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0 r5 = new kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0
                r6 = 27
                r5.<init>(r9, r8, r6)
                java.lang.Object r8 = kotlin.ExceptionsKt.performSuspending(r2, r4, r3, r5, r0)
                if (r8 != r1) goto L7e
                return r1
            L7e:
                r7 = r10
                r10 = r8
                r8 = r7
            L81:
                java.util.List r10 = (java.util.List) r10
                java.util.TimeZone r9 = java.util.TimeZone.getDefault()
                java.util.Calendar r9 = java.util.Calendar.getInstance(r9)
                java.util.Iterator r10 = r10.iterator()
            L8f:
                boolean r0 = r10.hasNext()
                if (r0 == 0) goto Lc7
                java.lang.Object r0 = r10.next()
                org.wikipedia.history.db.HistoryEntryWithImage r0 = (org.wikipedia.history.db.HistoryEntryWithImage) r0
                java.util.Date r1 = r0.timestamp
                r9.setTime(r1)
                int r1 = r9.get(r4)
                r2 = 6
                int r2 = r9.get(r2)
                int r1 = r1 + r2
                if (r3 == 0) goto Lae
                if (r1 == r3) goto Lbe
            Lae:
                java.util.Date r2 = r0.timestamp
                java.text.DateFormat r3 = java.text.DateFormat.getDateInstance()
                java.lang.String r2 = r3.format(r2)
                r2.getClass()
                r8.add(r2)
            Lbe:
                org.wikipedia.history.HistoryEntry r0 = $private$toHistoryEntry(r0)
                r8.add(r0)
                r3 = r1
                goto L8f
            Lc7:
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.filterHistoryItems$suspendImpl(org.wikipedia.history.db.HistoryEntryWithImageDao_Impl, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0059 A[LOOP:0: B:11:0x0053->B:13:0x0059, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.io.Serializable findEntryForReadMore$suspendImpl(org.wikipedia.history.db.HistoryEntryWithImageDao_Impl r4, int r5, int r6, java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
            /*
                boolean r0 = r8 instanceof org.wikipedia.history.db.HistoryEntryWithImageDao$findEntryForReadMore$1
                if (r0 == 0) goto L13
                r0 = r8
                org.wikipedia.history.db.HistoryEntryWithImageDao$findEntryForReadMore$1 r0 = (org.wikipedia.history.db.HistoryEntryWithImageDao$findEntryForReadMore$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.history.db.HistoryEntryWithImageDao$findEntryForReadMore$1 r0 = new org.wikipedia.history.db.HistoryEntryWithImageDao$findEntryForReadMore$1
                r0.<init>(r4, r8)
            L18:
                java.lang.Object r8 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L2e
                if (r2 != r3) goto L27
                kotlin.ResultKt.throwOnFailure(r8)
                goto L42
            L27:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
                r4 = 0
                return r4
            L2e:
                kotlin.ResultKt.throwOnFailure(r8)
                r0.label = r3
                androidx.room.RoomDatabase r8 = r4.__db
                org.wikipedia.readinglist.db.RecommendedPageDao_Impl$$ExternalSyntheticLambda5 r2 = new org.wikipedia.readinglist.db.RecommendedPageDao_Impl$$ExternalSyntheticLambda5
                r2.<init>(r6, r7, r5, r4)
                r4 = 0
                java.lang.Object r8 = kotlin.ExceptionsKt.performSuspending(r8, r3, r4, r2, r0)
                if (r8 != r1) goto L42
                return r1
            L42:
                java.lang.Iterable r8 = (java.lang.Iterable) r8
                java.util.ArrayList r4 = new java.util.ArrayList
                r5 = 10
                int r5 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r8, r5)
                r4.<init>(r5)
                java.util.Iterator r5 = r8.iterator()
            L53:
                boolean r6 = r5.hasNext()
                if (r6 == 0) goto L67
                java.lang.Object r6 = r5.next()
                org.wikipedia.history.db.HistoryEntryWithImage r6 = (org.wikipedia.history.db.HistoryEntryWithImage) r6
                org.wikipedia.history.HistoryEntry r6 = $private$toHistoryEntry(r6)
                r4.add(r6)
                goto L53
            L67:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.findEntryForReadMore$suspendImpl(org.wikipedia.history.db.HistoryEntryWithImageDao_Impl, int, int, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00d4  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00da  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object findHistoryItem$suspendImpl(org.wikipedia.history.db.HistoryEntryWithImageDao_Impl r10, org.wikipedia.dataclient.WikiSite r11, java.lang.String r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
            /*
                Method dump skipped, instructions count: 280
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.findHistoryItem$suspendImpl(org.wikipedia.history.db.HistoryEntryWithImageDao_Impl, org.wikipedia.dataclient.WikiSite, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x00d0, code lost:
        
            if (r12 == r2) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0065, code lost:
        
            if (r12 == r2) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x007c, code lost:
        
            if (r12 == r2) goto L38;
         */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object findObject$suspendImpl(org.wikipedia.offline.db.OfflineObjectDao_Impl r9, java.lang.String r10, java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
            /*
                androidx.room.RoomDatabase r0 = r9.__db
                boolean r1 = r12 instanceof org.wikipedia.offline.db.OfflineObjectDao$findObject$1
                if (r1 == 0) goto L15
                r1 = r12
                org.wikipedia.offline.db.OfflineObjectDao$findObject$1 r1 = (org.wikipedia.offline.db.OfflineObjectDao$findObject$1) r1
                int r2 = r1.label
                r3 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r2 & r3
                if (r4 == 0) goto L15
                int r2 = r2 - r3
                r1.label = r2
                goto L1a
            L15:
                org.wikipedia.offline.db.OfflineObjectDao$findObject$1 r1 = new org.wikipedia.offline.db.OfflineObjectDao$findObject$1
                r1.<init>(r9, r12)
            L1a:
                java.lang.Object r12 = r1.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r3 = r1.label
                r4 = 3
                r5 = 0
                r6 = 1
                r7 = 2
                r8 = 0
                if (r3 == 0) goto L48
                if (r3 == r6) goto L40
                if (r3 == r7) goto L38
                if (r3 != r4) goto L32
                kotlin.ResultKt.throwOnFailure(r12)
                goto Ld3
            L32:
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
                return r8
            L38:
                java.lang.String r10 = r1.L$1
                org.wikipedia.offline.db.OfflineObjectDao_Impl r9 = r1.L$0
                kotlin.ResultKt.throwOnFailure(r12)
                goto L68
            L40:
                java.lang.String r10 = r1.L$1
                org.wikipedia.offline.db.OfflineObjectDao_Impl r9 = r1.L$0
                kotlin.ResultKt.throwOnFailure(r12)
                goto L7f
            L48:
                kotlin.ResultKt.throwOnFailure(r12)
                if (r11 == 0) goto L6b
                int r12 = r11.length()
                if (r12 != 0) goto L54
                goto L6b
            L54:
                r1.L$0 = r9
                r1.L$1 = r10
                r1.label = r7
                org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8 r12 = new org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8
                r3 = 23
                r12.<init>(r3, r10, r11)
                java.lang.Object r12 = kotlin.ExceptionsKt.performSuspending(r0, r6, r5, r12, r1)
                if (r12 != r2) goto L68
                goto Ld2
            L68:
                org.wikipedia.offline.db.OfflineObject r12 = (org.wikipedia.offline.db.OfflineObject) r12
                goto L81
            L6b:
                r1.L$0 = r9
                r1.L$1 = r10
                r1.label = r6
                kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0 r11 = new kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0
                r12 = 28
                r11.<init>(r12, r10)
                java.lang.Object r12 = kotlin.ExceptionsKt.performSuspending(r0, r6, r5, r11, r1)
                if (r12 != r2) goto L7f
                goto Ld2
            L7f:
                org.wikipedia.offline.db.OfflineObject r12 = (org.wikipedia.offline.db.OfflineObject) r12
            L81:
                if (r12 != 0) goto Ld5
                java.lang.String r11 = "/commons/thumb/"
                boolean r11 = kotlin.text.StringsKt.contains(r10, r11, r5)
                if (r11 == 0) goto Ld5
                java.lang.String r11 = "/"
                java.lang.String[] r11 = new java.lang.String[]{r11}
                java.util.List r10 = kotlin.text.StringsKt.split$default(r10, r11)
                java.lang.String[] r11 = new java.lang.String[r5]
                java.lang.Object[] r10 = r10.toArray(r11)
                java.lang.String[] r10 = (java.lang.String[]) r10
                int r11 = r10.length
                if (r11 <= r7) goto Ld5
                int r11 = r10.length
                int r11 = r11 - r7
                r10 = r10[r11]
                java.lang.String r11 = "'"
                java.util.regex.Pattern r11 = java.util.regex.Pattern.compile(r11)
                r11.getClass()
                r10.getClass()
                java.util.regex.Matcher r10 = r11.matcher(r10)
                java.lang.String r11 = "%27"
                java.lang.String r10 = r10.replaceAll(r11)
                r10.getClass()
                r1.L$0 = r8
                r1.L$1 = r8
                r1.label = r4
                androidx.room.RoomDatabase r9 = r9.__db
                kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0 r11 = new kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0
                r12 = 29
                r11.<init>(r12, r10)
                java.lang.Object r12 = kotlin.ExceptionsKt.performSuspending(r9, r6, r5, r11, r1)
                if (r12 != r2) goto Ld3
            Ld2:
                return r2
            Ld3:
                org.wikipedia.offline.db.OfflineObject r12 = (org.wikipedia.offline.db.OfflineObject) r12
            Ld5:
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.findObject$suspendImpl(org.wikipedia.offline.db.OfflineObjectDao_Impl, java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00d4  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00da  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object findPageForSearchQueryInAnyList$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r11, org.wikipedia.dataclient.WikiSite r12, java.lang.String r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
            /*
                Method dump skipped, instructions count: 287
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.findPageForSearchQueryInAnyList$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, org.wikipedia.dataclient.WikiSite, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0044, code lost:
        
            if (r7 == r1) goto L24;
         */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x003b  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.io.Serializable getAllLists$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
            /*
                boolean r0 = r7 instanceof org.wikipedia.readinglist.db.ReadingListDao$getAllLists$1
                if (r0 == 0) goto L13
                r0 = r7
                org.wikipedia.readinglist.db.ReadingListDao$getAllLists$1 r0 = (org.wikipedia.readinglist.db.ReadingListDao$getAllLists$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListDao$getAllLists$1 r0 = new org.wikipedia.readinglist.db.ReadingListDao$getAllLists$1
                r0.<init>(r6, r7)
            L18:
                java.lang.Object r7 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L3b
                if (r2 == r4) goto L37
                if (r2 != r3) goto L30
                int r6 = r0.I$0
                java.util.Iterator r2 = r0.L$3
                java.util.List r4 = r0.L$1
                kotlin.ResultKt.throwOnFailure(r7)
                goto L52
            L30:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
                r6 = 0
                return r6
            L37:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L47
            L3b:
                kotlin.ResultKt.throwOnFailure(r7)
                r0.label = r4
                java.lang.Object r7 = r6.getListsWithoutContents(r0)
                if (r7 != r1) goto L47
                goto L79
            L47:
                java.util.List r7 = (java.util.List) r7
                java.util.Iterator r6 = r7.iterator()
                r2 = 0
                r4 = r2
                r2 = r6
                r6 = r4
                r4 = r7
            L52:
                boolean r7 = r2.hasNext()
                if (r7 == 0) goto L7a
                java.lang.Object r7 = r2.next()
                org.wikipedia.readinglist.database.ReadingList r7 = (org.wikipedia.readinglist.database.ReadingList) r7
                org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r5 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
                org.wikipedia.database.AppDatabase r5 = okhttp3.Cookie.Companion.getInstance()
                org.wikipedia.readinglist.db.ReadingListPageDao_Impl r5 = r5.readingListPageDao()
                r0.L$1 = r4
                r0.L$3 = r2
                r0.I$0 = r6
                r0.label = r3
                r5.getClass()
                java.lang.Object r7 = populateListPages$suspendImpl(r5, r7, r0)
                if (r7 != r1) goto L52
            L79:
                return r1
            L7a:
                java.util.ArrayList r6 = kotlin.collections.CollectionsKt.toMutableList(r4)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.getAllLists$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x0061, code lost:
        
            if (r10 != r1) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0063, code lost:
        
            return r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0040, code lost:
        
            if (r10 == r1) goto L21;
         */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object getAllListsWithUnsyncedPages$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
            /*
                boolean r0 = r10 instanceof org.wikipedia.readinglist.db.ReadingListDao$getAllListsWithUnsyncedPages$1
                if (r0 == 0) goto L13
                r0 = r10
                org.wikipedia.readinglist.db.ReadingListDao$getAllListsWithUnsyncedPages$1 r0 = (org.wikipedia.readinglist.db.ReadingListDao$getAllListsWithUnsyncedPages$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListDao$getAllListsWithUnsyncedPages$1 r0 = new org.wikipedia.readinglist.db.ReadingListDao$getAllListsWithUnsyncedPages$1
                r0.<init>(r9, r10)
            L18:
                java.lang.Object r10 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 2
                r4 = 0
                r5 = 1
                if (r2 == 0) goto L37
                if (r2 == r5) goto L33
                if (r2 != r3) goto L2d
                java.util.List r9 = r0.L$1
                kotlin.ResultKt.throwOnFailure(r10)
                goto L64
            L2d:
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
                return r4
            L33:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L43
            L37:
                kotlin.ResultKt.throwOnFailure(r10)
                r0.label = r5
                java.lang.Object r10 = r9.getListsWithoutContents(r0)
                if (r10 != r1) goto L43
                goto L63
            L43:
                r9 = r10
                java.util.List r9 = (java.util.List) r9
                org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r10 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
                org.wikipedia.database.AppDatabase r10 = okhttp3.Cookie.Companion.getInstance()
                org.wikipedia.readinglist.db.ReadingListPageDao_Impl r10 = r10.readingListPageDao()
                r0.L$1 = r9
                r0.label = r3
                androidx.room.RoomDatabase r2 = r10.__db
                org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0 r3 = new org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0
                r6 = 7
                r3.<init>(r6, r10)
                r10 = 0
                java.lang.Object r10 = kotlin.ExceptionsKt.performSuspending(r2, r5, r10, r3, r0)
                if (r10 != r1) goto L64
            L63:
                return r1
            L64:
                java.util.List r10 = (java.util.List) r10
                java.util.Iterator r10 = r10.iterator()
            L6a:
                boolean r0 = r10.hasNext()
                if (r0 == 0) goto L9b
                java.lang.Object r0 = r10.next()
                org.wikipedia.readinglist.database.ReadingListPage r0 = (org.wikipedia.readinglist.database.ReadingListPage) r0
                java.util.Iterator r1 = r9.iterator()
            L7a:
                boolean r2 = r1.hasNext()
                if (r2 == 0) goto L90
                java.lang.Object r2 = r1.next()
                r3 = r2
                org.wikipedia.readinglist.database.ReadingList r3 = (org.wikipedia.readinglist.database.ReadingList) r3
                long r5 = r3.id
                long r7 = r0.listId
                int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                if (r3 != 0) goto L7a
                goto L91
            L90:
                r2 = r4
            L91:
                org.wikipedia.readinglist.database.ReadingList r2 = (org.wikipedia.readinglist.database.ReadingList) r2
                if (r2 == 0) goto L6a
                java.util.ArrayList r1 = r2.pages
                r1.add(r0)
                goto L6a
            L9b:
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.getAllListsWithUnsyncedPages$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x002f  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object getBestStreak$suspendImpl(org.wikipedia.games.db.DailyGameHistoryDao_Impl r5, int r6, java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
            /*
                boolean r0 = r8 instanceof org.wikipedia.games.db.DailyGameHistoryDao$getBestStreak$1
                if (r0 == 0) goto L13
                r0 = r8
                org.wikipedia.games.db.DailyGameHistoryDao$getBestStreak$1 r0 = (org.wikipedia.games.db.DailyGameHistoryDao$getBestStreak$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.games.db.DailyGameHistoryDao$getBestStreak$1 r0 = new org.wikipedia.games.db.DailyGameHistoryDao$getBestStreak$1
                r0.<init>(r5, r8)
            L18:
                java.lang.Object r8 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                r4 = 0
                if (r2 == 0) goto L2f
                if (r2 != r3) goto L28
                kotlin.ResultKt.throwOnFailure(r8)
                goto L43
            L28:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
                r5 = 0
                return r5
            L2f:
                kotlin.ResultKt.throwOnFailure(r8)
                r0.label = r3
                androidx.room.RoomDatabase r5 = r5.__db
                androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3 r8 = new androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3
                r2 = 5
                r8.<init>(r6, r7, r2)
                java.lang.Object r8 = kotlin.ExceptionsKt.performSuspending(r5, r3, r4, r8, r0)
                if (r8 != r1) goto L43
                return r1
            L43:
                java.lang.Iterable r8 = (java.lang.Iterable) r8
                java.util.ArrayList r5 = new java.util.ArrayList
                r5.<init>()
                java.util.Iterator r6 = r8.iterator()
            L4e:
                boolean r7 = r6.hasNext()
                if (r7 == 0) goto L69
                java.lang.Object r7 = r6.next()
                r8 = r7
                org.wikipedia.games.db.DailyGameHistory r8 = (org.wikipedia.games.db.DailyGameHistory) r8
                int r8 = r8.playType
                org.wikipedia.games.PlayTypes r0 = org.wikipedia.games.PlayTypes.PLAYED_ON_SAME_DAY
                int r0 = r0.ordinal()
                if (r8 != r0) goto L4e
                r5.add(r7)
                goto L4e
            L69:
                boolean r6 = r5.isEmpty()
                if (r6 == 0) goto L75
                java.lang.Integer r5 = new java.lang.Integer
                r5.<init>(r4)
                return r5
            L75:
                j$.time.LocalDate r6 = j$.time.LocalDate.now()
                java.util.Iterator r5 = r5.iterator()
                r7 = r4
                r8 = r7
            L7f:
                boolean r0 = r5.hasNext()
                if (r0 == 0) goto Lb8
                java.lang.Object r0 = r5.next()
                org.wikipedia.games.db.DailyGameHistory r0 = (org.wikipedia.games.db.DailyGameHistory) r0
                int r1 = r0.year
                int r2 = r0.month
                j$.time.Month r2 = j$.time.Month.of(r2)
                int r0 = r0.day
                j$.time.LocalDate r0 = j$.time.LocalDate.of(r1, r2, r0)
                boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r6)
                r2 = 1
                if (r1 == 0) goto La8
                int r8 = r8 + 1
                j$.time.LocalDate r6 = r6.minusDays(r2)
                goto L7f
            La8:
                boolean r1 = r0.isBefore(r6)
                if (r1 == 0) goto L7f
                int r7 = java.lang.Math.max(r7, r8)
                j$.time.LocalDate r6 = r0.minusDays(r2)
                r8 = r4
                goto L7f
            Lb8:
                int r5 = java.lang.Math.max(r7, r8)
                java.lang.Integer r6 = new java.lang.Integer
                r6.<init>(r5)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.getBestStreak$suspendImpl(org.wikipedia.games.db.DailyGameHistoryDao_Impl, int, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x002f  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object getCurrentStreak$suspendImpl(org.wikipedia.games.db.DailyGameHistoryDao_Impl r5, int r6, java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
            /*
                boolean r0 = r8 instanceof org.wikipedia.games.db.DailyGameHistoryDao$getCurrentStreak$1
                if (r0 == 0) goto L13
                r0 = r8
                org.wikipedia.games.db.DailyGameHistoryDao$getCurrentStreak$1 r0 = (org.wikipedia.games.db.DailyGameHistoryDao$getCurrentStreak$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.games.db.DailyGameHistoryDao$getCurrentStreak$1 r0 = new org.wikipedia.games.db.DailyGameHistoryDao$getCurrentStreak$1
                r0.<init>(r5, r8)
            L18:
                java.lang.Object r8 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L2f
                if (r2 != r4) goto L28
                kotlin.ResultKt.throwOnFailure(r8)
                goto L43
            L28:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
                r5 = 0
                return r5
            L2f:
                kotlin.ResultKt.throwOnFailure(r8)
                r0.label = r4
                androidx.room.RoomDatabase r5 = r5.__db
                androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3 r8 = new androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3
                r2 = 5
                r8.<init>(r6, r7, r2)
                java.lang.Object r8 = kotlin.ExceptionsKt.performSuspending(r5, r4, r3, r8, r0)
                if (r8 != r1) goto L43
                return r1
            L43:
                java.lang.Iterable r8 = (java.lang.Iterable) r8
                java.util.ArrayList r5 = new java.util.ArrayList
                r5.<init>()
                java.util.Iterator r6 = r8.iterator()
            L4e:
                boolean r7 = r6.hasNext()
                if (r7 == 0) goto L69
                java.lang.Object r7 = r6.next()
                r8 = r7
                org.wikipedia.games.db.DailyGameHistory r8 = (org.wikipedia.games.db.DailyGameHistory) r8
                int r8 = r8.playType
                org.wikipedia.games.PlayTypes r0 = org.wikipedia.games.PlayTypes.PLAYED_ON_SAME_DAY
                int r0 = r0.ordinal()
                if (r8 != r0) goto L4e
                r5.add(r7)
                goto L4e
            L69:
                boolean r6 = r5.isEmpty()
                if (r6 == 0) goto L75
                java.lang.Integer r5 = new java.lang.Integer
                r5.<init>(r3)
                return r5
            L75:
                j$.time.LocalDate r6 = j$.time.LocalDate.now()
                java.util.Iterator r5 = r5.iterator()
            L7d:
                boolean r7 = r5.hasNext()
                if (r7 == 0) goto Lac
                java.lang.Object r7 = r5.next()
                org.wikipedia.games.db.DailyGameHistory r7 = (org.wikipedia.games.db.DailyGameHistory) r7
                int r8 = r7.year
                int r0 = r7.month
                j$.time.Month r0 = j$.time.Month.of(r0)
                int r7 = r7.day
                j$.time.LocalDate r7 = j$.time.LocalDate.of(r8, r0, r7)
                boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r6)
                if (r8 == 0) goto La6
                int r3 = r3 + 1
                r7 = 1
                j$.time.LocalDate r6 = r6.minusDays(r7)
                goto L7d
            La6:
                boolean r7 = r7.isBefore(r6)
                if (r7 == 0) goto L7d
            Lac:
                java.lang.Integer r5 = new java.lang.Integer
                r5.<init>(r3)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.getCurrentStreak$suspendImpl(org.wikipedia.games.db.DailyGameHistoryDao_Impl, int, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x008f, code lost:
        
            if (r7 == r1) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0091, code lost:
        
            return r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0042, code lost:
        
            if (r7 == r1) goto L33;
         */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0095 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x005f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.io.Serializable getDefaultList$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
            /*
                boolean r0 = r7 instanceof org.wikipedia.readinglist.db.ReadingListDao$getDefaultList$1
                if (r0 == 0) goto L13
                r0 = r7
                org.wikipedia.readinglist.db.ReadingListDao$getDefaultList$1 r0 = (org.wikipedia.readinglist.db.ReadingListDao$getDefaultList$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListDao$getDefaultList$1 r0 = new org.wikipedia.readinglist.db.ReadingListDao$getDefaultList$1
                r0.<init>(r6, r7)
            L18:
                java.lang.Object r7 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 2
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L37
                if (r2 == r4) goto L31
                if (r2 != r3) goto L2b
                kotlin.ResultKt.throwOnFailure(r7)
                goto L92
            L2b:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
                return r5
            L31:
                org.wikipedia.readinglist.db.ReadingListDao_Impl r6 = r0.L$0
                kotlin.ResultKt.throwOnFailure(r7)
                goto L45
            L37:
                kotlin.ResultKt.throwOnFailure(r7)
                r0.L$0 = r6
                r0.label = r4
                java.lang.Object r7 = r6.getListsWithoutContents(r0)
                if (r7 != r1) goto L45
                goto L91
            L45:
                java.lang.Iterable r7 = (java.lang.Iterable) r7
                java.util.Iterator r7 = r7.iterator()
            L4b:
                boolean r2 = r7.hasNext()
                if (r2 == 0) goto L5f
                java.lang.Object r2 = r7.next()
                r4 = r2
                org.wikipedia.readinglist.database.ReadingList r4 = (org.wikipedia.readinglist.database.ReadingList) r4
                boolean r4 = r4.isDefault()
                if (r4 == 0) goto L4b
                goto L60
            L5f:
                r2 = r5
            L60:
                org.wikipedia.readinglist.database.ReadingList r2 = (org.wikipedia.readinglist.database.ReadingList) r2
                if (r2 != 0) goto L95
                java.lang.String r7 = "(Re)creating default list."
                org.wikipedia.util.log.L$LEVEL_D$1 r2 = org.wikipedia.util.log.L.LEVEL_W
                r2.log(r7, r5)
                org.wikipedia.WikipediaApp r7 = org.wikipedia.WikipediaApp.instance
                org.wikipedia.WikipediaApp r7 = org.jsoup.Jsoup.getInstance()
                org.wikipedia.ActivityLifecycleHandler r7 = r7.activityLifecycleHandler
                android.app.Activity r7 = r7.currentActivity
                if (r7 != 0) goto L7b
                org.wikipedia.WikipediaApp r7 = org.jsoup.Jsoup.getInstance()
            L7b:
                r2 = 2131886331(0x7f1200fb, float:1.9407238E38)
                java.lang.String r7 = r7.getString(r2)
                r7.getClass()
                r0.L$0 = r5
                r0.label = r3
                java.lang.String r2 = ""
                java.io.Serializable r7 = $private$createNewList(r6, r2, r7, r0)
                if (r7 != r1) goto L92
            L91:
                return r1
            L92:
                org.wikipedia.readinglist.database.ReadingList r7 = (org.wikipedia.readinglist.database.ReadingList) r7
                return r7
            L95:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.getDefaultList$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        public static /* synthetic */ Object getInfoByPageIdsOrTitles$default(Service service, String str, String str2, ContinuationImpl continuationImpl, int i) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            return service.getInfoByPageIdsOrTitles(str, str2, continuationImpl);
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0051, code lost:
        
            if (r10 == r1) goto L25;
         */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0077 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x003b  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.io.Serializable getListById$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl r6, long r7, boolean r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
            /*
                boolean r0 = r10 instanceof org.wikipedia.readinglist.db.ReadingListDao$getListById$1
                if (r0 == 0) goto L13
                r0 = r10
                org.wikipedia.readinglist.db.ReadingListDao$getListById$1 r0 = (org.wikipedia.readinglist.db.ReadingListDao$getListById$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListDao$getListById$1 r0 = new org.wikipedia.readinglist.db.ReadingListDao$getListById$1
                r0.<init>(r6, r10)
            L18:
                java.lang.Object r10 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 2
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L3b
                if (r2 == r4) goto L33
                if (r2 != r3) goto L2d
                org.wikipedia.readinglist.database.ReadingList r6 = r0.L$1
                kotlin.ResultKt.throwOnFailure(r10)
                return r6
            L2d:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
                return r5
            L33:
                boolean r9 = r0.Z$0
                long r7 = r0.J$0
                kotlin.ResultKt.throwOnFailure(r10)
                goto L54
            L3b:
                kotlin.ResultKt.throwOnFailure(r10)
                r0.J$0 = r7
                r0.Z$0 = r9
                r0.label = r4
                androidx.room.RoomDatabase r6 = r6.__db
                androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28 r10 = new androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28
                r2 = 6
                r10.<init>(r7, r2)
                r2 = 0
                java.lang.Object r10 = kotlin.ExceptionsKt.performSuspending(r6, r4, r2, r10, r0)
                if (r10 != r1) goto L54
                goto L75
            L54:
                org.wikipedia.readinglist.database.ReadingList r10 = (org.wikipedia.readinglist.database.ReadingList) r10
                if (r10 == 0) goto L77
                if (r9 == 0) goto L76
                org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r6 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
                org.wikipedia.database.AppDatabase r6 = okhttp3.Cookie.Companion.getInstance()
                org.wikipedia.readinglist.db.ReadingListPageDao_Impl r6 = r6.readingListPageDao()
                r0.L$1 = r10
                r0.J$0 = r7
                r0.Z$0 = r9
                r0.label = r3
                r6.getClass()
                java.lang.Object r6 = populateListPages$suspendImpl(r6, r10, r0)
                if (r6 != r1) goto L76
            L75:
                return r1
            L76:
                return r10
            L77:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.getListById$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl, long, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object getListsFromPageOccurrences$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl r8, java.util.List r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
            /*
                boolean r0 = r10 instanceof org.wikipedia.readinglist.db.ReadingListDao$getListsFromPageOccurrences$1
                if (r0 == 0) goto L13
                r0 = r10
                org.wikipedia.readinglist.db.ReadingListDao$getListsFromPageOccurrences$1 r0 = (org.wikipedia.readinglist.db.ReadingListDao$getListsFromPageOccurrences$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListDao$getListsFromPageOccurrences$1 r0 = new org.wikipedia.readinglist.db.ReadingListDao$getListsFromPageOccurrences$1
                r0.<init>(r8, r10)
            L18:
                java.lang.Object r10 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 10
                r4 = 1
                if (r2 == 0) goto L32
                if (r2 != r4) goto L2b
                java.util.List r9 = r0.L$1
                kotlin.ResultKt.throwOnFailure(r10)
                goto L8c
            L2b:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
                r8 = 0
                return r8
            L32:
                kotlin.ResultKt.throwOnFailure(r10)
                java.util.ArrayList r10 = new java.util.ArrayList
                int r2 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r9, r3)
                r10.<init>(r2)
                java.util.Iterator r2 = r9.iterator()
            L42:
                boolean r5 = r2.hasNext()
                if (r5 == 0) goto L59
                java.lang.Object r5 = r2.next()
                org.wikipedia.readinglist.database.ReadingListPage r5 = (org.wikipedia.readinglist.database.ReadingListPage) r5
                long r5 = r5.listId
                java.lang.Long r7 = new java.lang.Long
                r7.<init>(r5)
                r10.add(r7)
                goto L42
            L59:
                java.util.Set r10 = kotlin.collections.CollectionsKt.toSet(r10)
                r0.L$1 = r9
                r0.label = r4
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r5 = "SELECT * FROM ReadingList WHERE id IN ("
                r2.append(r5)
                int r5 = r10.size()
                androidx.room.Room.appendPlaceholders(r5, r2)
                java.lang.String r5 = ")"
                r2.append(r5)
                java.lang.String r2 = r2.toString()
                androidx.room.RoomDatabase r8 = r8.__db
                org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8 r5 = new org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8
                r6 = 26
                r5.<init>(r6, r2, r10)
                r10 = 0
                java.lang.Object r10 = kotlin.ExceptionsKt.performSuspending(r8, r4, r10, r5, r0)
                if (r10 != r1) goto L8c
                return r1
            L8c:
                java.util.List r10 = (java.util.List) r10
                java.util.Iterator r8 = r9.iterator()
            L92:
                boolean r9 = r8.hasNext()
                if (r9 == 0) goto Le7
                java.lang.Object r9 = r8.next()
                org.wikipedia.readinglist.database.ReadingListPage r9 = (org.wikipedia.readinglist.database.ReadingListPage) r9
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                java.util.Iterator r1 = r10.iterator()
            La7:
                boolean r2 = r1.hasNext()
                if (r2 == 0) goto Lc0
                java.lang.Object r2 = r1.next()
                r4 = r2
                org.wikipedia.readinglist.database.ReadingList r4 = (org.wikipedia.readinglist.database.ReadingList) r4
                long r4 = r4.id
                long r6 = r9.listId
                int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r4 != 0) goto La7
                r0.add(r2)
                goto La7
            Lc0:
                java.util.ArrayList r1 = new java.util.ArrayList
                int r2 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r0, r3)
                r1.<init>(r2)
                java.util.Iterator r0 = r0.iterator()
            Lcd:
                boolean r2 = r0.hasNext()
                if (r2 == 0) goto L92
                java.lang.Object r2 = r0.next()
                org.wikipedia.readinglist.database.ReadingList r2 = (org.wikipedia.readinglist.database.ReadingList) r2
                java.util.ArrayList r2 = r2.pages
                boolean r2 = r2.add(r9)
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                r1.add(r2)
                goto Lcd
            Le7:
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.getListsFromPageOccurrences$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0059 A[LOOP:0: B:11:0x0053->B:13:0x0059, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.io.Serializable getMostRecentEntriesWithImage$suspendImpl(org.wikipedia.history.db.HistoryEntryWithImageDao_Impl r5, int r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
            /*
                boolean r0 = r7 instanceof org.wikipedia.history.db.HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1
                if (r0 == 0) goto L13
                r0 = r7
                org.wikipedia.history.db.HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1 r0 = (org.wikipedia.history.db.HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.history.db.HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1 r0 = new org.wikipedia.history.db.HistoryEntryWithImageDao$getMostRecentEntriesWithImage$1
                r0.<init>(r5, r7)
            L18:
                java.lang.Object r7 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L2e
                if (r2 != r3) goto L27
                kotlin.ResultKt.throwOnFailure(r7)
                goto L42
            L27:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
                r5 = 0
                return r5
            L2e:
                kotlin.ResultKt.throwOnFailure(r7)
                r0.label = r3
                androidx.room.RoomDatabase r7 = r5.__db
                org.wikipedia.categories.db.CategoryDao_Impl$$ExternalSyntheticLambda3 r2 = new org.wikipedia.categories.db.CategoryDao_Impl$$ExternalSyntheticLambda3
                r4 = 0
                r2.<init>(r6, r4, r5)
                java.lang.Object r7 = kotlin.ExceptionsKt.performSuspending(r7, r3, r4, r2, r0)
                if (r7 != r1) goto L42
                return r1
            L42:
                java.lang.Iterable r7 = (java.lang.Iterable) r7
                java.util.ArrayList r5 = new java.util.ArrayList
                r6 = 10
                int r6 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r7, r6)
                r5.<init>(r6)
                java.util.Iterator r6 = r7.iterator()
            L53:
                boolean r7 = r6.hasNext()
                if (r7 == 0) goto L67
                java.lang.Object r7 = r6.next()
                org.wikipedia.history.db.HistoryEntryWithImage r7 = (org.wikipedia.history.db.HistoryEntryWithImage) r7
                org.wikipedia.history.HistoryEntry r7 = $private$toHistoryEntry(r7)
                r5.add(r7)
                goto L53
            L67:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.getMostRecentEntriesWithImage$suspendImpl(org.wikipedia.history.db.HistoryEntryWithImageDao_Impl, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        public static /* synthetic */ Object getSummaryResponse$default(RestService restService, String str, String str2, String str3, String str4, String str5, SuspendLambda suspendLambda, int i) {
            if ((i & 4) != 0) {
                str2 = null;
            }
            if ((i & 8) != 0) {
                str3 = null;
            }
            if ((i & 16) != 0) {
                str4 = null;
            }
            if ((i & 32) != 0) {
                str5 = null;
            }
            return restService.getSummaryResponse(str, null, str2, str3, str4, str5, suspendLambda);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(13:0|1|(2:3|(10:5|6|7|(1:(1:10)(2:22|23))(3:24|25|(1:27))|11|(3:14|15|12)|16|17|18|19))|30|6|7|(0)(0)|11|(1:12)|16|17|18|19) */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0029, code lost:
        
            r6 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x007a, code lost:
        
            org.wikipedia.util.log.L.w(r6);
         */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0054 A[Catch: Exception -> 0x0029, TRY_LEAVE, TryCatch #0 {Exception -> 0x0029, blocks: (B:10:0x0025, B:11:0x0047, B:12:0x004e, B:14:0x0054, B:25:0x0035), top: B:7:0x0021 }] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object getTotalBytesForPageId$suspendImpl(org.wikipedia.offline.db.OfflineObjectDao_Impl r6, long r7, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
            /*
                boolean r0 = r9 instanceof org.wikipedia.offline.db.OfflineObjectDao$getTotalBytesForPageId$1
                if (r0 == 0) goto L13
                r0 = r9
                org.wikipedia.offline.db.OfflineObjectDao$getTotalBytesForPageId$1 r0 = (org.wikipedia.offline.db.OfflineObjectDao$getTotalBytesForPageId$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.offline.db.OfflineObjectDao$getTotalBytesForPageId$1 r0 = new org.wikipedia.offline.db.OfflineObjectDao$getTotalBytesForPageId$1
                r0.<init>(r6, r9)
            L18:
                java.lang.Object r9 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 0
                r5 = 1
                if (r2 == 0) goto L32
                if (r2 != r5) goto L2b
                kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L29
                goto L47
            L29:
                r6 = move-exception
                goto L7a
            L2b:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
                r6 = 0
                return r6
            L32:
                kotlin.ResultKt.throwOnFailure(r9)
                r0.label = r5     // Catch: java.lang.Exception -> L29
                androidx.room.RoomDatabase r6 = r6.__db     // Catch: java.lang.Exception -> L29
                androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28 r9 = new androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28     // Catch: java.lang.Exception -> L29
                r2 = 5
                r9.<init>(r7, r2)     // Catch: java.lang.Exception -> L29
                r7 = 0
                java.lang.Object r9 = kotlin.ExceptionsKt.performSuspending(r6, r5, r7, r9, r0)     // Catch: java.lang.Exception -> L29
                if (r9 != r1) goto L47
                return r1
            L47:
                java.lang.Iterable r9 = (java.lang.Iterable) r9     // Catch: java.lang.Exception -> L29
                java.util.Iterator r6 = r9.iterator()     // Catch: java.lang.Exception -> L29
                r7 = r3
            L4e:
                boolean r9 = r6.hasNext()     // Catch: java.lang.Exception -> L29
                if (r9 == 0) goto L78
                java.lang.Object r9 = r6.next()     // Catch: java.lang.Exception -> L29
                org.wikipedia.offline.db.OfflineObject r9 = (org.wikipedia.offline.db.OfflineObject) r9     // Catch: java.lang.Exception -> L29
                java.io.File r0 = new java.io.File     // Catch: java.lang.Exception -> L29
                java.lang.String r9 = r9.path     // Catch: java.lang.Exception -> L29
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L29
                r1.<init>()     // Catch: java.lang.Exception -> L29
                r1.append(r9)     // Catch: java.lang.Exception -> L29
                java.lang.String r9 = ".1"
                r1.append(r9)     // Catch: java.lang.Exception -> L29
                java.lang.String r9 = r1.toString()     // Catch: java.lang.Exception -> L29
                r0.<init>(r9)     // Catch: java.lang.Exception -> L29
                long r0 = r0.length()     // Catch: java.lang.Exception -> L29
                long r7 = r7 + r0
                goto L4e
            L78:
                r3 = r7
                goto L7d
            L7a:
                org.wikipedia.util.log.L.w(r6)
            L7d:
                java.lang.Long r6 = new java.lang.Long
                r6.<init>(r3)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.getTotalBytesForPageId$suspendImpl(org.wikipedia.offline.db.OfflineObjectDao_Impl, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object insert$suspendImpl(org.wikipedia.history.db.HistoryEntryDao_Impl r8, java.util.List r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
            /*
                boolean r0 = r10 instanceof org.wikipedia.history.db.HistoryEntryDao$insert$1
                if (r0 == 0) goto L13
                r0 = r10
                org.wikipedia.history.db.HistoryEntryDao$insert$1 r0 = (org.wikipedia.history.db.HistoryEntryDao$insert$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.history.db.HistoryEntryDao$insert$1 r0 = new org.wikipedia.history.db.HistoryEntryDao$insert$1
                r0.<init>(r8, r10)
            L18:
                java.lang.Object r10 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L38
                if (r2 != r4) goto L31
                int r8 = r0.I$0
                java.util.Iterator r9 = r0.L$3
                org.wikipedia.history.db.HistoryEntryDao_Impl r2 = r0.L$0
                kotlin.ResultKt.throwOnFailure(r10)
                r10 = r9
                r9 = r8
                r8 = r2
                goto L41
            L31:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
                r8 = 0
                return r8
            L38:
                kotlin.ResultKt.throwOnFailure(r10)
                java.util.Iterator r9 = r9.iterator()
                r10 = r9
                r9 = r3
            L41:
                boolean r2 = r10.hasNext()
                if (r2 == 0) goto L65
                java.lang.Object r2 = r10.next()
                org.wikipedia.history.HistoryEntry r2 = (org.wikipedia.history.HistoryEntry) r2
                r0.L$0 = r8
                r0.L$3 = r10
                r0.I$0 = r9
                r0.label = r4
                androidx.room.RoomDatabase r5 = r8.__db
                org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8 r6 = new org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8
                r7 = 20
                r6.<init>(r7, r8, r2)
                java.lang.Object r2 = kotlin.ExceptionsKt.performSuspending(r5, r3, r4, r6, r0)
                if (r2 != r1) goto L41
                return r1
            L65:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.insert$suspendImpl(org.wikipedia.history.db.HistoryEntryDao_Impl, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        public static void m(Throwable th, StateFlowImpl stateFlowImpl, Object obj) {
            Resource.Error error = new Resource.Error(th);
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(obj, error);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object markPagesForDeletion$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r7, org.wikipedia.readinglist.database.ReadingList r8, java.util.List r9, boolean r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
            /*
                boolean r0 = r11 instanceof org.wikipedia.readinglist.db.ReadingListPageDao$markPagesForDeletion$1
                if (r0 == 0) goto L13
                r0 = r11
                org.wikipedia.readinglist.db.ReadingListPageDao$markPagesForDeletion$1 r0 = (org.wikipedia.readinglist.db.ReadingListPageDao$markPagesForDeletion$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListPageDao$markPagesForDeletion$1 r0 = new org.wikipedia.readinglist.db.ReadingListPageDao$markPagesForDeletion$1
                r0.<init>(r7, r11)
            L18:
                java.lang.Object r11 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L3d
                if (r2 != r3) goto L36
                boolean r7 = r0.Z$0
                java.util.Iterator r8 = r0.L$3
                java.util.List r9 = r0.L$2
                org.wikipedia.readinglist.database.ReadingList r10 = r0.L$1
                org.wikipedia.readinglist.db.ReadingListPageDao_Impl r2 = r0.L$0
                kotlin.ResultKt.throwOnFailure(r11)
                r11 = r10
                r10 = r9
                r9 = r11
                r11 = r7
                r7 = r2
                goto L49
            L36:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
                r7 = 0
                return r7
            L3d:
                kotlin.ResultKt.throwOnFailure(r11)
                java.util.Iterator r11 = r9.iterator()
                r6 = r9
                r9 = r8
                r8 = r11
                r11 = r10
                r10 = r6
            L49:
                boolean r2 = r8.hasNext()
                if (r2 == 0) goto L6c
                java.lang.Object r2 = r8.next()
                org.wikipedia.readinglist.database.ReadingListPage r2 = (org.wikipedia.readinglist.database.ReadingListPage) r2
                r4 = 2
                r2.status = r4
                r0.L$0 = r7
                r0.L$1 = r9
                r0.L$2 = r10
                r0.L$3 = r8
                r0.Z$0 = r11
                r0.label = r3
                java.lang.Object r2 = r7.updateReadingListPage(r2, r0)
                if (r2 != r1) goto L49
                return r1
            L6c:
                if (r11 == 0) goto La3
                r9.getClass()
                r10.getClass()
                java.util.Set r7 = kotlin.collections.CollectionsKt.toSet(r10)
                java.util.Set r7 = okio.Path.Companion.createIdsForDeletion(r9, r7)
                r8 = r7
                java.util.Collection r8 = (java.util.Collection) r8
                boolean r9 = r8.isEmpty()
                if (r9 != 0) goto La3
                org.wikipedia.settings.Prefs r9 = org.wikipedia.settings.Prefs.INSTANCE
                java.util.Set r9 = org.wikipedia.settings.Prefs.getReadingListPagesDeletedIds()
                java.lang.Iterable r9 = (java.lang.Iterable) r9
                java.util.Set r9 = kotlin.collections.CollectionsKt.toMutableSet(r9)
                r9.addAll(r8)
                int r8 = r9.size()
                r11 = 256(0x100, float:3.59E-43)
                if (r8 >= r11) goto L9d
                r7 = r9
            L9d:
                org.wikipedia.settings.Prefs.setReadingListPagesDeletedIds(r7)
                okio.Path.Companion.manualSync$default()
            La3:
                kotlinx.coroutines.flow.SharedFlowImpl r7 = org.wikipedia.concurrency.FlowEventBus._events
                org.wikipedia.events.ArticleSavedOrDeletedEvent r7 = new org.wikipedia.events.ArticleSavedOrDeletedEvent
                r8 = 0
                org.wikipedia.readinglist.database.ReadingListPage[] r9 = new org.wikipedia.readinglist.database.ReadingListPage[r8]
                java.lang.Object[] r9 = r10.toArray(r9)
                org.wikipedia.readinglist.database.ReadingListPage[] r9 = (org.wikipedia.readinglist.database.ReadingListPage[]) r9
                int r10 = r9.length
                java.lang.Object[] r9 = java.util.Arrays.copyOf(r9, r10)
                org.wikipedia.readinglist.database.ReadingListPage[] r9 = (org.wikipedia.readinglist.database.ReadingListPage[]) r9
                r7.<init>(r8, r9)
                org.wikipedia.concurrency.FlowEventBus.post(r7)
                org.wikipedia.readinglist.ReadingListFragment.MultiSelectCallback.enqueue()
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.markPagesForDeletion$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, org.wikipedia.readinglist.database.ReadingList, java.util.List, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object markPagesForOffline$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r6, java.util.List r7, boolean r8, boolean r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
            /*
                boolean r0 = r10 instanceof org.wikipedia.readinglist.db.ReadingListPageDao$markPagesForOffline$1
                if (r0 == 0) goto L13
                r0 = r10
                org.wikipedia.readinglist.db.ReadingListPageDao$markPagesForOffline$1 r0 = (org.wikipedia.readinglist.db.ReadingListPageDao$markPagesForOffline$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListPageDao$markPagesForOffline$1 r0 = new org.wikipedia.readinglist.db.ReadingListPageDao$markPagesForOffline$1
                r0.<init>(r6, r10)
            L18:
                java.lang.Object r10 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L2e
                if (r2 != r3) goto L27
                kotlin.ResultKt.throwOnFailure(r10)
                goto L67
            L27:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
                r6 = 0
                return r6
            L2e:
                kotlin.ResultKt.throwOnFailure(r10)
                java.util.ArrayList r10 = new java.util.ArrayList
                r2 = 10
                int r2 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r7, r2)
                r10.<init>(r2)
                java.util.Iterator r7 = r7.iterator()
            L40:
                boolean r2 = r7.hasNext()
                if (r2 == 0) goto L5e
                java.lang.Object r2 = r7.next()
                org.wikipedia.readinglist.database.ReadingListPage r2 = (org.wikipedia.readinglist.database.ReadingListPage) r2
                boolean r4 = r2.offline
                if (r4 != r8) goto L52
                if (r9 != 0) goto L5a
            L52:
                r2.offline = r8
                if (r9 == 0) goto L5a
                r4 = 3
                r2.status = r4
            L5a:
                r10.add(r2)
                goto L40
            L5e:
                r0.label = r3
                java.lang.Object r6 = r6.updateReadingListPages(r10, r0)
                if (r6 != r1) goto L67
                return r1
            L67:
                org.wikipedia.readinglist.ReadingListFragment.MultiSelectCallback.enqueue()
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.markPagesForOffline$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, java.util.List, boolean, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0105, code lost:
        
            if (r2.markPagesForDeletion(r1, r0, true, r5) == r6) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00dd, code lost:
        
            if (r3 == r6) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00aa, code lost:
        
            if (r8 == r6) goto L39;
         */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00cc  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object movePageToList$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r17, org.wikipedia.readinglist.database.ReadingList r18, org.wikipedia.readinglist.database.ReadingList r19, org.wikipedia.page.PageTitle r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
            /*
                Method dump skipped, instructions count: 278
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.movePageToList$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, org.wikipedia.readinglist.database.ReadingList, org.wikipedia.readinglist.database.ReadingList, org.wikipedia.page.PageTitle, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0080 -> B:10:0x0081). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object movePagesToListAndDeleteSourcePages$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r11, org.wikipedia.readinglist.database.ReadingList r12, org.wikipedia.readinglist.database.ReadingList r13, java.util.List r14, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
            /*
                boolean r0 = r15 instanceof org.wikipedia.readinglist.db.ReadingListPageDao$movePagesToListAndDeleteSourcePages$1
                if (r0 == 0) goto L13
                r0 = r15
                org.wikipedia.readinglist.db.ReadingListPageDao$movePagesToListAndDeleteSourcePages$1 r0 = (org.wikipedia.readinglist.db.ReadingListPageDao$movePagesToListAndDeleteSourcePages$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListPageDao$movePagesToListAndDeleteSourcePages$1 r0 = new org.wikipedia.readinglist.db.ReadingListPageDao$movePagesToListAndDeleteSourcePages$1
                r0.<init>(r11, r15)
            L18:
                java.lang.Object r15 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L3d
                if (r2 != r3) goto L36
                org.wikipedia.page.PageTitle r11 = r0.L$6
                java.util.Iterator r12 = r0.L$5
                java.util.List r13 = r0.L$4
                org.wikipedia.readinglist.database.ReadingList r14 = r0.L$2
                org.wikipedia.readinglist.database.ReadingList r2 = r0.L$1
                org.wikipedia.readinglist.db.ReadingListPageDao_Impl r4 = r0.L$0
                kotlin.ResultKt.throwOnFailure(r15)
                r7 = r14
                r6 = r2
                r5 = r4
                goto L81
            L36:
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
                r11 = 0
                return r11
            L3d:
                kotlin.ResultKt.throwOnFailure(r15)
                java.util.ArrayList r15 = new java.util.ArrayList
                r15.<init>()
                java.util.Iterator r14 = r14.iterator()
                r5 = r11
                r6 = r12
                r7 = r13
                r12 = r14
                r13 = r15
            L4e:
                boolean r11 = r12.hasNext()
                if (r11 == 0) goto L89
                java.lang.Object r11 = r12.next()
                r8 = r11
                org.wikipedia.page.PageTitle r8 = (org.wikipedia.page.PageTitle) r8
                r0.L$0 = r5
                r0.L$1 = r6
                r0.L$2 = r7
                r0.L$4 = r13
                r0.L$5 = r12
                r0.L$6 = r8
                r0.label = r3
                androidx.room.RoomDatabase r11 = r5.__db
                org.wikipedia.readinglist.db.ReadingListPageDao_Impl$movePageToList$2 r4 = new org.wikipedia.readinglist.db.ReadingListPageDao_Impl$movePageToList$2
                r9 = 0
                r10 = 0
                r4.<init>(r5, r6, r7, r8, r9, r10)
                java.lang.Object r11 = kotlin.ExceptionsKt.performInTransactionSuspending(r11, r0, r4)
                kotlin.coroutines.intrinsics.CoroutineSingletons r14 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r11 != r14) goto L7b
                goto L7d
            L7b:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
            L7d:
                if (r11 != r1) goto L80
                return r1
            L80:
                r11 = r8
            L81:
                java.lang.String r11 = r11.getDisplayText()
                r13.add(r11)
                goto L4e
            L89:
                boolean r11 = r13.isEmpty()
                if (r11 != 0) goto L95
                org.wikipedia.readinglist.ReadingListFragment.MultiSelectCallback.enqueue()
                okio.Path.Companion.manualSync$default()
            L95:
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.movePagesToListAndDeleteSourcePages$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, org.wikipedia.readinglist.database.ReadingList, org.wikipedia.readinglist.database.ReadingList, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object populateListPages$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl r8, org.wikipedia.readinglist.database.ReadingList r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
            /*
                boolean r0 = r10 instanceof org.wikipedia.readinglist.db.ReadingListPageDao$populateListPages$1
                if (r0 == 0) goto L13
                r0 = r10
                org.wikipedia.readinglist.db.ReadingListPageDao$populateListPages$1 r0 = (org.wikipedia.readinglist.db.ReadingListPageDao$populateListPages$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListPageDao$populateListPages$1 r0 = new org.wikipedia.readinglist.db.ReadingListPageDao$populateListPages$1
                r0.<init>(r8, r10)
            L18:
                java.lang.Object r10 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L30
                if (r2 != r3) goto L29
                java.util.ArrayList r8 = r0.L$2
                kotlin.ResultKt.throwOnFailure(r10)
                goto L4e
            L29:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
                r8 = 0
                return r8
            L30:
                kotlin.ResultKt.throwOnFailure(r10)
                java.util.ArrayList r10 = r9.pages
                long r4 = r9.id
                r0.L$2 = r10
                r0.label = r3
                androidx.room.RoomDatabase r9 = r8.__db
                androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28 r2 = new androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28
                r6 = 7
                r2.<init>(r4, r8, r6)
                r8 = 0
                java.lang.Object r8 = kotlin.ExceptionsKt.performSuspending(r9, r3, r8, r2, r0)
                if (r8 != r1) goto L4b
                return r1
            L4b:
                r7 = r10
                r10 = r8
                r8 = r7
            L4e:
                java.util.Collection r10 = (java.util.Collection) r10
                r8.addAll(r10)
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.populateListPages$suspendImpl(org.wikipedia.readinglist.db.ReadingListPageDao_Impl, org.wikipedia.readinglist.database.ReadingList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        public static /* synthetic */ Object postLogIn$default(Service service, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Boolean bool, ContinuationImpl continuationImpl, int i) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            if ((i & 4) != 0) {
                str3 = null;
            }
            if ((i & 8) != 0) {
                str4 = null;
            }
            if ((i & 16) != 0) {
                str5 = null;
            }
            if ((i & 32) != 0) {
                str6 = null;
            }
            if ((i & 64) != 0) {
                str7 = null;
            }
            if ((i & 128) != 0) {
                str8 = null;
            }
            return service.postLogIn(str, str2, str3, str4, str5, str6, str7, str8, str9, bool, (i & 1024) == 0 ? "totp" : null, continuationImpl);
        }

        public static /* synthetic */ Object searchMoreLike$default(Service service, String str, int i, int i2, Integer num, int i3, int i4, ContinuationImpl continuationImpl, int i5) {
            int i6;
            Service service2;
            String str2;
            int i7;
            int i8;
            ContinuationImpl continuationImpl2;
            if ((i5 & 8) != 0) {
                num = null;
            }
            Integer num2 = num;
            int i9 = (i5 & 16) != 0 ? 86400 : i3;
            if ((i5 & 32) != 0) {
                i6 = 86400;
                str2 = str;
                i7 = i;
                i8 = i2;
                continuationImpl2 = continuationImpl;
                service2 = service;
            } else {
                i6 = i4;
                service2 = service;
                str2 = str;
                i7 = i;
                i8 = i2;
                continuationImpl2 = continuationImpl;
            }
            return service2.searchMoreLike(str2, i7, i8, num2, i9, i6, continuationImpl2);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0075 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object updateLists$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl r7, java.util.List r8, boolean r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
            /*
                boolean r0 = r10 instanceof org.wikipedia.readinglist.db.ReadingListDao$updateLists$1
                if (r0 == 0) goto L13
                r0 = r10
                org.wikipedia.readinglist.db.ReadingListDao$updateLists$1 r0 = (org.wikipedia.readinglist.db.ReadingListDao$updateLists$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.wikipedia.readinglist.db.ReadingListDao$updateLists$1 r0 = new org.wikipedia.readinglist.db.ReadingListDao$updateLists$1
                r0.<init>(r7, r10)
            L18:
                java.lang.Object r10 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L30
                boolean r7 = r0.Z$0
                java.util.Iterator r8 = r0.L$2
                org.wikipedia.readinglist.db.ReadingListDao_Impl r9 = r0.L$0
                kotlin.ResultKt.throwOnFailure(r10)
                r6 = r9
                r9 = r7
                r7 = r6
                goto L3e
            L30:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
                r7 = 0
                return r7
            L37:
                kotlin.ResultKt.throwOnFailure(r10)
                java.util.Iterator r8 = r8.iterator()
            L3e:
                boolean r10 = r8.hasNext()
                kotlin.Unit r2 = kotlin.Unit.INSTANCE
                if (r10 == 0) goto L75
                java.lang.Object r10 = r8.next()
                org.wikipedia.readinglist.database.ReadingList r10 = (org.wikipedia.readinglist.database.ReadingList) r10
                if (r9 == 0) goto L50
                r10.dirty = r3
            L50:
                r10.getClass()
                long r4 = java.lang.System.currentTimeMillis()
                r10.atime = r4
                r0.L$0 = r7
                r0.L$2 = r8
                r0.Z$0 = r9
                r0.label = r3
                androidx.room.RoomDatabase r4 = r7.__db
                org.wikipedia.readinglist.db.ReadingListDao_Impl$$ExternalSyntheticLambda0 r5 = new org.wikipedia.readinglist.db.ReadingListDao_Impl$$ExternalSyntheticLambda0
                r5.<init>(r7, r10, r3)
                r10 = 0
                java.lang.Object r10 = kotlin.ExceptionsKt.performSuspending(r4, r10, r3, r5, r0)
                kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r10 != r4) goto L72
                r2 = r10
            L72:
                if (r2 != r1) goto L3e
                return r1
            L75:
                if (r9 == 0) goto L7a
                okio.Path.Companion.manualSync$default()
            L7a:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.updateLists$suspendImpl(org.wikipedia.readinglist.db.ReadingListDao_Impl, java.util.List, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object upsert$suspendImpl(org.wikipedia.history.db.HistoryEntryDao_Impl r16, org.wikipedia.history.HistoryEntry r17, kotlin.coroutines.jvm.internal.ContinuationImpl r18) {
            /*
                r6 = r16
                r7 = r17
                r0 = r18
                boolean r1 = r0 instanceof org.wikipedia.history.db.HistoryEntryDao$upsert$1
                if (r1 == 0) goto L1a
                r1 = r0
                org.wikipedia.history.db.HistoryEntryDao$upsert$1 r1 = (org.wikipedia.history.db.HistoryEntryDao$upsert$1) r1
                int r2 = r1.label
                r3 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r2 & r3
                if (r4 == 0) goto L1a
                int r2 = r2 - r3
                r1.label = r2
            L18:
                r8 = r1
                goto L20
            L1a:
                org.wikipedia.history.db.HistoryEntryDao$upsert$1 r1 = new org.wikipedia.history.db.HistoryEntryDao$upsert$1
                r1.<init>(r6, r0)
                goto L18
            L20:
                java.lang.Object r0 = r8.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r8.label
                r10 = 0
                r11 = 3
                r12 = 2
                r13 = 1
                r14 = 0
                if (r1 == 0) goto L49
                if (r1 == r13) goto L41
                if (r1 == r12) goto L3d
                if (r1 != r11) goto L37
                kotlin.ResultKt.throwOnFailure(r0)
                return r0
            L37:
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r0)
                return r14
            L3d:
                kotlin.ResultKt.throwOnFailure(r0)
                return r0
            L41:
                org.wikipedia.history.HistoryEntry r1 = r8.L$1
                org.wikipedia.history.db.HistoryEntryDao_Impl r2 = r8.L$0
                kotlin.ResultKt.throwOnFailure(r0)
                goto L6f
            L49:
                kotlin.ResultKt.throwOnFailure(r0)
                java.lang.String r1 = r7.authority
                java.lang.String r2 = r7.lang
                java.lang.String r3 = r7.apiTitle
                java.util.Date r0 = r7.timestamp
                long r4 = r0.getTime()
                r8.L$0 = r6
                r8.L$1 = r7
                r8.label = r13
                androidx.room.RoomDatabase r15 = r6.__db
                androidx.compose.ui.text.MultiParagraph$$ExternalSyntheticLambda0 r0 = new androidx.compose.ui.text.MultiParagraph$$ExternalSyntheticLambda0
                r0.<init>(r1, r2, r3, r4, r6)
                java.lang.Object r0 = kotlin.ExceptionsKt.performSuspending(r15, r13, r10, r0, r8)
                if (r0 != r9) goto L6c
                goto La4
            L6c:
                r2 = r16
                r1 = r7
            L6f:
                org.wikipedia.history.HistoryEntry r0 = (org.wikipedia.history.HistoryEntry) r0
                r3 = 20
                if (r0 == 0) goto L91
                java.lang.String r1 = r1.displayTitle
                r1.getClass()
                r0.displayTitle = r1
                r8.L$0 = r14
                r8.L$1 = r14
                r8.label = r12
                androidx.room.RoomDatabase r1 = r2.__db
                org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8 r4 = new org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8
                r4.<init>(r3, r2, r0)
                java.lang.Object r0 = kotlin.ExceptionsKt.performSuspending(r1, r10, r13, r4, r8)
                if (r0 != r9) goto L90
                goto La4
            L90:
                return r0
            L91:
                r8.L$0 = r14
                r8.L$1 = r14
                r8.label = r11
                androidx.room.RoomDatabase r0 = r2.__db
                org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8 r4 = new org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8
                r4.<init>(r3, r2, r1)
                java.lang.Object r0 = kotlin.ExceptionsKt.performSuspending(r0, r10, r13, r4, r8)
                if (r0 != r9) goto La5
            La4:
                return r9
            La5:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.upsert$suspendImpl(org.wikipedia.history.db.HistoryEntryDao_Impl, org.wikipedia.history.HistoryEntry, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ef  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object upsertForMetadata$suspendImpl(org.wikipedia.pageimages.db.PageImageDao_Impl r27, org.wikipedia.history.HistoryEntry r28, java.lang.String r29, java.lang.String r30, java.lang.Double r31, java.lang.Double r32, kotlin.coroutines.jvm.internal.ContinuationImpl r33) {
            /*
                Method dump skipped, instructions count: 306
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.upsertForMetadata$suspendImpl(org.wikipedia.pageimages.db.PageImageDao_Impl, org.wikipedia.history.HistoryEntry, java.lang.String, java.lang.String, java.lang.Double, java.lang.Double, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object upsertForTimeSpent$suspendImpl(org.wikipedia.pageimages.db.PageImageDao_Impl r23, org.wikipedia.history.HistoryEntry r24, int r25, kotlin.coroutines.jvm.internal.ContinuationImpl r26) {
            /*
                Method dump skipped, instructions count: 224
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.Service.CC.upsertForTimeSpent$suspendImpl(org.wikipedia.pageimages.db.PageImageDao_Impl, org.wikipedia.history.HistoryEntry, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        public static /* synthetic */ boolean m(Applier applier) {
            return applier != null;
        }
    }
}
