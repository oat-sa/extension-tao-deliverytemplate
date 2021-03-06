<?php
use oat\tao\helpers\Template;
?>
<link rel="stylesheet" type="text/css" href="<?=Template::css('compiling.css')?>" />

<div class="main-container flex-container-full">
    <div class="ext-home-container ui-state-highlight">
        <div>

            <h1>
                <img src="<?= Template::img('compile.png')?>" />&nbsp;&nbsp;<?=__('Publishing "%s"', get_data('deliveryLabel'))?> <?=get_data('processLabel')?></h1>

            <div style="margin: 20px 10px;">
    		<?=__('To be accessible by test takers on the specified dates, you have to publish your delivery.')?>
    		<br />
    		<?=__('Be careful, later modifications on its content are not  taken into account. You have to publish it again to make your modifications available to test takers.')?>
    	</div>

    	<div style="margin: 30px 10px;">
    	   <div class="buttonSuperArea" id="initCompilation">
    	   <div class="buttonArea">
	        <a href="#" class="button back">
	           <?=__('Cancel')?>
            </a>
	
            <a id='compiler' href="#" class="button">
    			<?php if(get_data('isCompiled')):?>
    				<?=__('Publish again')?> 
    			<?php else:?>
    				<?=__('Publish')?>
    			<?php endif;?>
    		</a>
    		</div>
    		</div>
            </div>

            <div id="progressbar" style="margin: 20px 10px;"></div>

            <div id="testsContainer" style="margin: 20px 10px;"></div>

            <div id="generatingProcess" style="margin: 20px 10px;">
                <div id="generatingProcess_info"
                    style="margin-bottom: 10px;">
                    <img
                        style="position: relative; top: 10px; margin-right: 10px;"
                        src="<?= Template::img('process-ajax-loader.gif')?>" /><?=__('Publishing is in progress, please wait...')?></div>
                <div id="generatingProcess_feedback"></div>
                
            </div>
        	<div id ="postCompilation" style="margin: 30px 10px;">
        	    <div class="buttonSuperArea">
            	    <div class="buttonArea">
                       <a href="#" class="button back">
    	                   <?=__('Ok')?>
                       </a>
                    </div>
            </div>	   
        </div>
    </div>
</div>