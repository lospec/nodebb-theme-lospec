<div class="categories" itemscope itemtype="http://www.schema.org/ItemList">
    <div class="row categories-header hidden-xs hidden-sm">
        <div class="col-md-8 col-xs-12"><div class="header-title">[[category:category]]</div></div>
        <div class="col-md-1"><div class="header-title">[[global:topics]]</div></div>
        <div class="col-md-1"><div class="header-title">[[global:posts]]</div></div>
        <div class="col-md-2"><div class="header-title">Last Post</div></div>
    </div>

    <!-- BEGIN categories -->
	
	<div class="category-header-title">{categories.name}</div>
	
	<!-- BEGIN categories.children -->
    <div class="row" component="categories/category" data-cid="{categories.children.cid}" data-numRecentReplies="1">
        <div class="col-md-8 col-xs-12">
            <div class="category-info">
                <div class="category-info-content">
                    <div class="category-icon">
                        <i class="fa fa-fw {categories.children.icon}"></i>
                    </div>
                    <!-- IMPORT partials/categories/link.tpl -->

                    <div class="category-description">
                        {categories.children.descriptionParsed}
                    </div>
                </div>
                
            </div>
        </div>
        <div class="col-md-1 hidden-xs hidden-sm">
            <div class="total-topic-count human-readable-number" title="{categories.children.totalTopicCount}">
                {categories.children.totalTopicCount}
            </div>
        </div>
        <div class="col-md-1 hidden-xs hidden-sm">
            <div class="total-post-count human-readable-number" title="{categories.children.totalPostCount}">
                {categories.children.totalPostCount}
            </div>
        </div>
        <div class="col-md-2 hidden-xs hidden-sm">
            <div class="teaser" component="topic/teaser">
                <!-- BEGIN posts -->
        	    <!-- IF @first -->
                <div component="category/posts">
				

            		<div class="post-preview">
						<a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
							{../topic.title} 
						</a>
						<small> by {../user.displayname}</small>
					</div>
					<small class="timeago" title="{../timestampISO}"></small>
					
        		</div>
        		<!-- ENDIF @first -->
        	    <!-- END posts -->

        	    <!-- IF !../posts.length -->
    			[[category:no_new_posts]]
    	        <!-- ENDIF !../posts.length -->
            </div>
        </div>
    </div>
	<!-- END categories.children -->
    <!-- END categories -->
    <!-- IMPORT partials/paginator.tpl -->
</div>